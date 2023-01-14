// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Country country) setCountry,
    required TResult Function(String prefix) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Country country)? setCountry,
    TResult? Function(String prefix)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Country country)? setCountry,
    TResult Function(String prefix)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesLoad value) load,
    required TResult Function(_CitiesSetCountry value) setCountry,
    required TResult Function(_CitiesFilter value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CitiesLoad value)? load,
    TResult? Function(_CitiesSetCountry value)? setCountry,
    TResult? Function(_CitiesFilter value)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesLoad value)? load,
    TResult Function(_CitiesSetCountry value)? setCountry,
    TResult Function(_CitiesFilter value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesEventCopyWith<$Res> {
  factory $CitiesEventCopyWith(
          CitiesEvent value, $Res Function(CitiesEvent) then) =
      _$CitiesEventCopyWithImpl<$Res, CitiesEvent>;
}

/// @nodoc
class _$CitiesEventCopyWithImpl<$Res, $Val extends CitiesEvent>
    implements $CitiesEventCopyWith<$Res> {
  _$CitiesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CitiesLoadCopyWith<$Res> {
  factory _$$_CitiesLoadCopyWith(
          _$_CitiesLoad value, $Res Function(_$_CitiesLoad) then) =
      __$$_CitiesLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CitiesLoadCopyWithImpl<$Res>
    extends _$CitiesEventCopyWithImpl<$Res, _$_CitiesLoad>
    implements _$$_CitiesLoadCopyWith<$Res> {
  __$$_CitiesLoadCopyWithImpl(
      _$_CitiesLoad _value, $Res Function(_$_CitiesLoad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CitiesLoad implements _CitiesLoad {
  const _$_CitiesLoad();

  @override
  String toString() {
    return 'CitiesEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CitiesLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Country country) setCountry,
    required TResult Function(String prefix) filter,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Country country)? setCountry,
    TResult? Function(String prefix)? filter,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Country country)? setCountry,
    TResult Function(String prefix)? filter,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesLoad value) load,
    required TResult Function(_CitiesSetCountry value) setCountry,
    required TResult Function(_CitiesFilter value) filter,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CitiesLoad value)? load,
    TResult? Function(_CitiesSetCountry value)? setCountry,
    TResult? Function(_CitiesFilter value)? filter,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesLoad value)? load,
    TResult Function(_CitiesSetCountry value)? setCountry,
    TResult Function(_CitiesFilter value)? filter,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _CitiesLoad implements CitiesEvent {
  const factory _CitiesLoad() = _$_CitiesLoad;
}

/// @nodoc
abstract class _$$_CitiesSetCountryCopyWith<$Res> {
  factory _$$_CitiesSetCountryCopyWith(
          _$_CitiesSetCountry value, $Res Function(_$_CitiesSetCountry) then) =
      __$$_CitiesSetCountryCopyWithImpl<$Res>;
  @useResult
  $Res call({Country country});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$$_CitiesSetCountryCopyWithImpl<$Res>
    extends _$CitiesEventCopyWithImpl<$Res, _$_CitiesSetCountry>
    implements _$$_CitiesSetCountryCopyWith<$Res> {
  __$$_CitiesSetCountryCopyWithImpl(
      _$_CitiesSetCountry _value, $Res Function(_$_CitiesSetCountry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_$_CitiesSetCountry(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc

class _$_CitiesSetCountry implements _CitiesSetCountry {
  const _$_CitiesSetCountry({required this.country});

  @override
  final Country country;

  @override
  String toString() {
    return 'CitiesEvent.setCountry(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitiesSetCountry &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitiesSetCountryCopyWith<_$_CitiesSetCountry> get copyWith =>
      __$$_CitiesSetCountryCopyWithImpl<_$_CitiesSetCountry>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Country country) setCountry,
    required TResult Function(String prefix) filter,
  }) {
    return setCountry(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Country country)? setCountry,
    TResult? Function(String prefix)? filter,
  }) {
    return setCountry?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Country country)? setCountry,
    TResult Function(String prefix)? filter,
    required TResult orElse(),
  }) {
    if (setCountry != null) {
      return setCountry(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesLoad value) load,
    required TResult Function(_CitiesSetCountry value) setCountry,
    required TResult Function(_CitiesFilter value) filter,
  }) {
    return setCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CitiesLoad value)? load,
    TResult? Function(_CitiesSetCountry value)? setCountry,
    TResult? Function(_CitiesFilter value)? filter,
  }) {
    return setCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesLoad value)? load,
    TResult Function(_CitiesSetCountry value)? setCountry,
    TResult Function(_CitiesFilter value)? filter,
    required TResult orElse(),
  }) {
    if (setCountry != null) {
      return setCountry(this);
    }
    return orElse();
  }
}

abstract class _CitiesSetCountry implements CitiesEvent {
  const factory _CitiesSetCountry({required final Country country}) =
      _$_CitiesSetCountry;

  Country get country;
  @JsonKey(ignore: true)
  _$$_CitiesSetCountryCopyWith<_$_CitiesSetCountry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CitiesFilterCopyWith<$Res> {
  factory _$$_CitiesFilterCopyWith(
          _$_CitiesFilter value, $Res Function(_$_CitiesFilter) then) =
      __$$_CitiesFilterCopyWithImpl<$Res>;
  @useResult
  $Res call({String prefix});
}

/// @nodoc
class __$$_CitiesFilterCopyWithImpl<$Res>
    extends _$CitiesEventCopyWithImpl<$Res, _$_CitiesFilter>
    implements _$$_CitiesFilterCopyWith<$Res> {
  __$$_CitiesFilterCopyWithImpl(
      _$_CitiesFilter _value, $Res Function(_$_CitiesFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
  }) {
    return _then(_$_CitiesFilter(
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CitiesFilter implements _CitiesFilter {
  const _$_CitiesFilter({required this.prefix});

  @override
  final String prefix;

  @override
  String toString() {
    return 'CitiesEvent.filter(prefix: $prefix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitiesFilter &&
            (identical(other.prefix, prefix) || other.prefix == prefix));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prefix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitiesFilterCopyWith<_$_CitiesFilter> get copyWith =>
      __$$_CitiesFilterCopyWithImpl<_$_CitiesFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Country country) setCountry,
    required TResult Function(String prefix) filter,
  }) {
    return filter(prefix);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Country country)? setCountry,
    TResult? Function(String prefix)? filter,
  }) {
    return filter?.call(prefix);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Country country)? setCountry,
    TResult Function(String prefix)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(prefix);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesLoad value) load,
    required TResult Function(_CitiesSetCountry value) setCountry,
    required TResult Function(_CitiesFilter value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CitiesLoad value)? load,
    TResult? Function(_CitiesSetCountry value)? setCountry,
    TResult? Function(_CitiesFilter value)? filter,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesLoad value)? load,
    TResult Function(_CitiesSetCountry value)? setCountry,
    TResult Function(_CitiesFilter value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _CitiesFilter implements CitiesEvent {
  const factory _CitiesFilter({required final String prefix}) = _$_CitiesFilter;

  String get prefix;
  @JsonKey(ignore: true)
  _$$_CitiesFilterCopyWith<_$_CitiesFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CitiesState {
  Country get country => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Country country) loading,
    required TResult Function(Country country, List<City> topCities,
            List<City> otherCities, City? selectedCity)
        loaded,
    required TResult Function(Country country, String prefix, List<City> cities,
            City? selectedCity)
        filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Country country)? loading,
    TResult? Function(Country country, List<City> topCities,
            List<City> otherCities, City? selectedCity)?
        loaded,
    TResult? Function(Country country, String prefix, List<City> cities,
            City? selectedCity)?
        filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Country country)? loading,
    TResult Function(Country country, List<City> topCities,
            List<City> otherCities, City? selectedCity)?
        loaded,
    TResult Function(Country country, String prefix, List<City> cities,
            City? selectedCity)?
        filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesLoading value) loading,
    required TResult Function(_CitiesLoaded value) loaded,
    required TResult Function(_CitiesFiltered value) filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CitiesLoading value)? loading,
    TResult? Function(_CitiesLoaded value)? loaded,
    TResult? Function(_CitiesFiltered value)? filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesLoading value)? loading,
    TResult Function(_CitiesLoaded value)? loaded,
    TResult Function(_CitiesFiltered value)? filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CitiesStateCopyWith<CitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesStateCopyWith<$Res> {
  factory $CitiesStateCopyWith(
          CitiesState value, $Res Function(CitiesState) then) =
      _$CitiesStateCopyWithImpl<$Res, CitiesState>;
  @useResult
  $Res call({Country country});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class _$CitiesStateCopyWithImpl<$Res, $Val extends CitiesState>
    implements $CitiesStateCopyWith<$Res> {
  _$CitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CitiesLoadingCopyWith<$Res>
    implements $CitiesStateCopyWith<$Res> {
  factory _$$_CitiesLoadingCopyWith(
          _$_CitiesLoading value, $Res Function(_$_CitiesLoading) then) =
      __$$_CitiesLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Country country});

  @override
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$$_CitiesLoadingCopyWithImpl<$Res>
    extends _$CitiesStateCopyWithImpl<$Res, _$_CitiesLoading>
    implements _$$_CitiesLoadingCopyWith<$Res> {
  __$$_CitiesLoadingCopyWithImpl(
      _$_CitiesLoading _value, $Res Function(_$_CitiesLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_$_CitiesLoading(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }
}

/// @nodoc

class _$_CitiesLoading implements _CitiesLoading {
  const _$_CitiesLoading({required this.country});

  @override
  final Country country;

  @override
  String toString() {
    return 'CitiesState.loading(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitiesLoading &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitiesLoadingCopyWith<_$_CitiesLoading> get copyWith =>
      __$$_CitiesLoadingCopyWithImpl<_$_CitiesLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Country country) loading,
    required TResult Function(Country country, List<City> topCities,
            List<City> otherCities, City? selectedCity)
        loaded,
    required TResult Function(Country country, String prefix, List<City> cities,
            City? selectedCity)
        filtered,
  }) {
    return loading(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Country country)? loading,
    TResult? Function(Country country, List<City> topCities,
            List<City> otherCities, City? selectedCity)?
        loaded,
    TResult? Function(Country country, String prefix, List<City> cities,
            City? selectedCity)?
        filtered,
  }) {
    return loading?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Country country)? loading,
    TResult Function(Country country, List<City> topCities,
            List<City> otherCities, City? selectedCity)?
        loaded,
    TResult Function(Country country, String prefix, List<City> cities,
            City? selectedCity)?
        filtered,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesLoading value) loading,
    required TResult Function(_CitiesLoaded value) loaded,
    required TResult Function(_CitiesFiltered value) filtered,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CitiesLoading value)? loading,
    TResult? Function(_CitiesLoaded value)? loaded,
    TResult? Function(_CitiesFiltered value)? filtered,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesLoading value)? loading,
    TResult Function(_CitiesLoaded value)? loaded,
    TResult Function(_CitiesFiltered value)? filtered,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CitiesLoading implements CitiesState {
  const factory _CitiesLoading({required final Country country}) =
      _$_CitiesLoading;

  @override
  Country get country;
  @override
  @JsonKey(ignore: true)
  _$$_CitiesLoadingCopyWith<_$_CitiesLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CitiesLoadedCopyWith<$Res>
    implements $CitiesStateCopyWith<$Res> {
  factory _$$_CitiesLoadedCopyWith(
          _$_CitiesLoaded value, $Res Function(_$_CitiesLoaded) then) =
      __$$_CitiesLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Country country,
      List<City> topCities,
      List<City> otherCities,
      City? selectedCity});

  @override
  $CountryCopyWith<$Res> get country;
  $CityCopyWith<$Res>? get selectedCity;
}

/// @nodoc
class __$$_CitiesLoadedCopyWithImpl<$Res>
    extends _$CitiesStateCopyWithImpl<$Res, _$_CitiesLoaded>
    implements _$$_CitiesLoadedCopyWith<$Res> {
  __$$_CitiesLoadedCopyWithImpl(
      _$_CitiesLoaded _value, $Res Function(_$_CitiesLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? topCities = null,
    Object? otherCities = null,
    Object? selectedCity = freezed,
  }) {
    return _then(_$_CitiesLoaded(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      topCities: null == topCities
          ? _value._topCities
          : topCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      otherCities: null == otherCities
          ? _value._otherCities
          : otherCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get selectedCity {
    if (_value.selectedCity == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.selectedCity!, (value) {
      return _then(_value.copyWith(selectedCity: value));
    });
  }
}

/// @nodoc

class _$_CitiesLoaded implements _CitiesLoaded {
  const _$_CitiesLoaded(
      {required this.country,
      required final List<City> topCities,
      required final List<City> otherCities,
      required this.selectedCity})
      : _topCities = topCities,
        _otherCities = otherCities;

  @override
  final Country country;
  final List<City> _topCities;
  @override
  List<City> get topCities {
    if (_topCities is EqualUnmodifiableListView) return _topCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topCities);
  }

  final List<City> _otherCities;
  @override
  List<City> get otherCities {
    if (_otherCities is EqualUnmodifiableListView) return _otherCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherCities);
  }

  @override
  final City? selectedCity;

  @override
  String toString() {
    return 'CitiesState.loaded(country: $country, topCities: $topCities, otherCities: $otherCities, selectedCity: $selectedCity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitiesLoaded &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality()
                .equals(other._topCities, _topCities) &&
            const DeepCollectionEquality()
                .equals(other._otherCities, _otherCities) &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      country,
      const DeepCollectionEquality().hash(_topCities),
      const DeepCollectionEquality().hash(_otherCities),
      selectedCity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitiesLoadedCopyWith<_$_CitiesLoaded> get copyWith =>
      __$$_CitiesLoadedCopyWithImpl<_$_CitiesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Country country) loading,
    required TResult Function(Country country, List<City> topCities,
            List<City> otherCities, City? selectedCity)
        loaded,
    required TResult Function(Country country, String prefix, List<City> cities,
            City? selectedCity)
        filtered,
  }) {
    return loaded(country, topCities, otherCities, selectedCity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Country country)? loading,
    TResult? Function(Country country, List<City> topCities,
            List<City> otherCities, City? selectedCity)?
        loaded,
    TResult? Function(Country country, String prefix, List<City> cities,
            City? selectedCity)?
        filtered,
  }) {
    return loaded?.call(country, topCities, otherCities, selectedCity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Country country)? loading,
    TResult Function(Country country, List<City> topCities,
            List<City> otherCities, City? selectedCity)?
        loaded,
    TResult Function(Country country, String prefix, List<City> cities,
            City? selectedCity)?
        filtered,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(country, topCities, otherCities, selectedCity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesLoading value) loading,
    required TResult Function(_CitiesLoaded value) loaded,
    required TResult Function(_CitiesFiltered value) filtered,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CitiesLoading value)? loading,
    TResult? Function(_CitiesLoaded value)? loaded,
    TResult? Function(_CitiesFiltered value)? filtered,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesLoading value)? loading,
    TResult Function(_CitiesLoaded value)? loaded,
    TResult Function(_CitiesFiltered value)? filtered,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CitiesLoaded implements CitiesState {
  const factory _CitiesLoaded(
      {required final Country country,
      required final List<City> topCities,
      required final List<City> otherCities,
      required final City? selectedCity}) = _$_CitiesLoaded;

  @override
  Country get country;
  List<City> get topCities;
  List<City> get otherCities;
  City? get selectedCity;
  @override
  @JsonKey(ignore: true)
  _$$_CitiesLoadedCopyWith<_$_CitiesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CitiesFilteredCopyWith<$Res>
    implements $CitiesStateCopyWith<$Res> {
  factory _$$_CitiesFilteredCopyWith(
          _$_CitiesFiltered value, $Res Function(_$_CitiesFiltered) then) =
      __$$_CitiesFilteredCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Country country, String prefix, List<City> cities, City? selectedCity});

  @override
  $CountryCopyWith<$Res> get country;
  $CityCopyWith<$Res>? get selectedCity;
}

/// @nodoc
class __$$_CitiesFilteredCopyWithImpl<$Res>
    extends _$CitiesStateCopyWithImpl<$Res, _$_CitiesFiltered>
    implements _$$_CitiesFilteredCopyWith<$Res> {
  __$$_CitiesFilteredCopyWithImpl(
      _$_CitiesFiltered _value, $Res Function(_$_CitiesFiltered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? prefix = null,
    Object? cities = null,
    Object? selectedCity = freezed,
  }) {
    return _then(_$_CitiesFiltered(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get selectedCity {
    if (_value.selectedCity == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.selectedCity!, (value) {
      return _then(_value.copyWith(selectedCity: value));
    });
  }
}

/// @nodoc

class _$_CitiesFiltered implements _CitiesFiltered {
  const _$_CitiesFiltered(
      {required this.country,
      required this.prefix,
      required final List<City> cities,
      required this.selectedCity})
      : _cities = cities;

  @override
  final Country country;
  @override
  final String prefix;
  final List<City> _cities;
  @override
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  final City? selectedCity;

  @override
  String toString() {
    return 'CitiesState.filtered(country: $country, prefix: $prefix, cities: $cities, selectedCity: $selectedCity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitiesFiltered &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country, prefix,
      const DeepCollectionEquality().hash(_cities), selectedCity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitiesFilteredCopyWith<_$_CitiesFiltered> get copyWith =>
      __$$_CitiesFilteredCopyWithImpl<_$_CitiesFiltered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Country country) loading,
    required TResult Function(Country country, List<City> topCities,
            List<City> otherCities, City? selectedCity)
        loaded,
    required TResult Function(Country country, String prefix, List<City> cities,
            City? selectedCity)
        filtered,
  }) {
    return filtered(country, prefix, cities, selectedCity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Country country)? loading,
    TResult? Function(Country country, List<City> topCities,
            List<City> otherCities, City? selectedCity)?
        loaded,
    TResult? Function(Country country, String prefix, List<City> cities,
            City? selectedCity)?
        filtered,
  }) {
    return filtered?.call(country, prefix, cities, selectedCity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Country country)? loading,
    TResult Function(Country country, List<City> topCities,
            List<City> otherCities, City? selectedCity)?
        loaded,
    TResult Function(Country country, String prefix, List<City> cities,
            City? selectedCity)?
        filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(country, prefix, cities, selectedCity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CitiesLoading value) loading,
    required TResult Function(_CitiesLoaded value) loaded,
    required TResult Function(_CitiesFiltered value) filtered,
  }) {
    return filtered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CitiesLoading value)? loading,
    TResult? Function(_CitiesLoaded value)? loaded,
    TResult? Function(_CitiesFiltered value)? filtered,
  }) {
    return filtered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CitiesLoading value)? loading,
    TResult Function(_CitiesLoaded value)? loaded,
    TResult Function(_CitiesFiltered value)? filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(this);
    }
    return orElse();
  }
}

abstract class _CitiesFiltered implements CitiesState {
  const factory _CitiesFiltered(
      {required final Country country,
      required final String prefix,
      required final List<City> cities,
      required final City? selectedCity}) = _$_CitiesFiltered;

  @override
  Country get country;
  String get prefix;
  List<City> get cities;
  City? get selectedCity;
  @override
  @JsonKey(ignore: true)
  _$$_CitiesFilteredCopyWith<_$_CitiesFiltered> get copyWith =>
      throw _privateConstructorUsedError;
}
