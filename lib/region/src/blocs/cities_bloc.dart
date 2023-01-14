import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/city.dart';
import '../models/country.dart';
import '../repositories/region_repository.dart';

part 'cities_bloc.freezed.dart';

@freezed
class CitiesEvent with _$CitiesEvent {
  const factory CitiesEvent.load() = _CitiesLoad;

  const factory CitiesEvent.setCountry({
    required Country country,
  }) = _CitiesSetCountry;

  const factory CitiesEvent.filter({
    required String prefix,
  }) = _CitiesFilter;
}

@freezed
class CitiesState with _$CitiesState {
  const factory CitiesState.loading({
    required Country country,
  }) = _CitiesLoading;

  const factory CitiesState.loaded({
    required Country country,
    required List<City> topCities,
    required List<City> otherCities,
    required City? selectedCity,
  }) = _CitiesLoaded;

  const factory CitiesState.filtered({
    required Country country,
    required String prefix,
    required List<City> cities,
    required City? selectedCity,
  }) = _CitiesFiltered;
}

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  CitiesBloc({
    required Country country,
    required City? city,
    required RegionRepository repository,
  })  : _selectedCity = city,
        _repository = repository,
        super(CitiesState.loading(country: country)) {
    on<_CitiesLoad>(_load);
    on<_CitiesSetCountry>(_setCountry);
    on<_CitiesFilter>(_filter, transformer: restartable());
  }

  final City? _selectedCity;
  final RegionRepository _repository;

  List<City>? _cities;

  void _load(_CitiesLoad event, Emitter<CitiesState> emit) async {
    _cities = await _repository.loadCities(state.country.code);

    return _emitCitiesLoaded(emit);
  }

  void _setCountry(_CitiesSetCountry event, Emitter<CitiesState> emit) async {
    emit(CitiesState.loading(
      country: event.country,
    ));

    _cities = await _repository.loadCities(event.country.code);

    return _emitCitiesLoaded(emit);
  }

  void _filter(_CitiesFilter event, Emitter<CitiesState> emit) async {
    if (_cities == null) {
      return;
    }

    if (event.prefix.isEmpty) {
      return _emitCitiesLoaded(emit);
    }

    final cities = _cities!.where((city) {
      return city.name.toLowerCase().startsWith(event.prefix);
    }).toList();

    emit(CitiesState.filtered(
      country: state.country,
      prefix: event.prefix,
      cities: cities,
      selectedCity: _selectedCity,
    ));
  }

  Future<void> _emitCitiesLoaded(Emitter<CitiesState> emit) async {
    final topCities = <City>[];
    final otherCities = <City>[];

    for (final city in _cities!) {
      if (city == _selectedCity) {
        topCities.insert(0, city);
      } else if (city.isTop) {
        topCities.add(city);
      } else {
        otherCities.add(city);
      }
    }

    emit(CitiesState.loaded(
      country: state.country,
      topCities: topCities,
      otherCities: otherCities,
      selectedCity: _selectedCity,
    ));
  }
}
