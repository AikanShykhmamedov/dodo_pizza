import 'package:auto_route/auto_route.dart';
import 'package:dodo_pizza/app/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/cities_bloc.dart';
import '../models/city.dart';
import '../models/country.dart';
import '../models/region.dart';
import '../repositories/region_repository.dart';
import 'widgets/cities_app_bar.dart';
import 'widgets/cities_list.dart';
import 'widgets/filtered_cities_list.dart';

class CitiesScreen extends StatefulWidget {
  const CitiesScreen({
    super.key,
    required this.country,
    required this.city,
    this.repository = const RegionRepository(),
  });

  final Country country;
  final City? city;
  final RegionRepository repository;

  @override
  State<CitiesScreen> createState() => _CitiesScreenState();
}

class _CitiesScreenState extends State<CitiesScreen> {
  late final bool _canPop;
  late final CitiesBloc _citiesBloc;

  @override
  void initState() {
    super.initState();

    _canPop = widget.city != null;
    _citiesBloc = CitiesBloc(
      country: widget.country,
      city: widget.city,
      repository: widget.repository,
    )..add(const CitiesEvent.load());
  }

  @override
  void dispose() {
    _citiesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitiesBloc, CitiesState>(
      bloc: _citiesBloc,
      builder: (context, state) {
        final appBar = CitiesAppBar(
          canPop: _canPop,
          countryName: state.country.name,
          onCountryPressed: _onCountryPressed,
          onSearch: _onSearch,
        );

        final body = state.when(
          loading: (_) => const Center(
            child: SizedBox.square(
              dimension: 24,
              child: CircularProgressIndicator(
                strokeWidth: 3,
              ),
            ),
          ),
          loaded: (_, topCities, otherCities, selectedCity) => CitiesList(
            onCityPressed: _onCityPressed,
            topCities: topCities,
            otherCities: otherCities,
            selectedCity: selectedCity,
          ),
          filtered: (_, prefix, cities, selectedCity) => FilteredCitiesList(
            onCityPressed: _onCityPressed,
            prefix: prefix,
            filteredCities: cities,
            selectedCity: selectedCity,
          ),
        );

        return WillPopScope(
          onWillPop: () async => _canPop,
          child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            appBar: appBar,
            body: body,
          ),
        );
      },
    );
  }

  void _onSearch(String prefix) {
    _citiesBloc.add(CitiesEvent.filter(prefix: prefix));
  }

  void _onCountryPressed() async {
    final country = await context.pushRoute<Country>(CountriesRoute());

    if (country != null) {
      _citiesBloc.add(CitiesEvent.setCountry(country: country));
    }
  }

  void _onCityPressed(City city) {
    final region = Region(
      country: _citiesBloc.state.country,
      city: city,
    );

    context.router.popForced<Region>(region);
  }
}
