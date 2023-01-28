// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodValue _$FoodValueFromJson(Map<String, dynamic> json) {
  return _FoodValue.fromJson(json);
}

/// @nodoc
mixin _$FoodValue {
  double get fats => throw _privateConstructorUsedError;
  double get proteins => throw _privateConstructorUsedError;
  double get carbohydrates => throw _privateConstructorUsedError;
  double get kilocalories => throw _privateConstructorUsedError;

  /// Weight of Product in grams.
  ///
  /// Can be empty.
  String get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodValueCopyWith<FoodValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodValueCopyWith<$Res> {
  factory $FoodValueCopyWith(FoodValue value, $Res Function(FoodValue) then) =
      _$FoodValueCopyWithImpl<$Res, FoodValue>;
  @useResult
  $Res call(
      {double fats,
      double proteins,
      double carbohydrates,
      double kilocalories,
      String weight});
}

/// @nodoc
class _$FoodValueCopyWithImpl<$Res, $Val extends FoodValue>
    implements $FoodValueCopyWith<$Res> {
  _$FoodValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fats = null,
    Object? proteins = null,
    Object? carbohydrates = null,
    Object? kilocalories = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      fats: null == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as double,
      proteins: null == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as double,
      kilocalories: null == kilocalories
          ? _value.kilocalories
          : kilocalories // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodValueCopyWith<$Res> implements $FoodValueCopyWith<$Res> {
  factory _$$_FoodValueCopyWith(
          _$_FoodValue value, $Res Function(_$_FoodValue) then) =
      __$$_FoodValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double fats,
      double proteins,
      double carbohydrates,
      double kilocalories,
      String weight});
}

/// @nodoc
class __$$_FoodValueCopyWithImpl<$Res>
    extends _$FoodValueCopyWithImpl<$Res, _$_FoodValue>
    implements _$$_FoodValueCopyWith<$Res> {
  __$$_FoodValueCopyWithImpl(
      _$_FoodValue _value, $Res Function(_$_FoodValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fats = null,
    Object? proteins = null,
    Object? carbohydrates = null,
    Object? kilocalories = null,
    Object? weight = null,
  }) {
    return _then(_$_FoodValue(
      fats: null == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as double,
      proteins: null == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as double,
      kilocalories: null == kilocalories
          ? _value.kilocalories
          : kilocalories // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodValue implements _FoodValue {
  const _$_FoodValue(
      {required this.fats,
      required this.proteins,
      required this.carbohydrates,
      required this.kilocalories,
      required this.weight});

  factory _$_FoodValue.fromJson(Map<String, dynamic> json) =>
      _$$_FoodValueFromJson(json);

  @override
  final double fats;
  @override
  final double proteins;
  @override
  final double carbohydrates;
  @override
  final double kilocalories;

  /// Weight of Product in grams.
  ///
  /// Can be empty.
  @override
  final String weight;

  @override
  String toString() {
    return 'FoodValue(fats: $fats, proteins: $proteins, carbohydrates: $carbohydrates, kilocalories: $kilocalories, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodValue &&
            (identical(other.fats, fats) || other.fats == fats) &&
            (identical(other.proteins, proteins) ||
                other.proteins == proteins) &&
            (identical(other.carbohydrates, carbohydrates) ||
                other.carbohydrates == carbohydrates) &&
            (identical(other.kilocalories, kilocalories) ||
                other.kilocalories == kilocalories) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fats, proteins, carbohydrates, kilocalories, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodValueCopyWith<_$_FoodValue> get copyWith =>
      __$$_FoodValueCopyWithImpl<_$_FoodValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodValueToJson(
      this,
    );
  }
}

abstract class _FoodValue implements FoodValue {
  const factory _FoodValue(
      {required final double fats,
      required final double proteins,
      required final double carbohydrates,
      required final double kilocalories,
      required final String weight}) = _$_FoodValue;

  factory _FoodValue.fromJson(Map<String, dynamic> json) =
      _$_FoodValue.fromJson;

  @override
  double get fats;
  @override
  double get proteins;
  @override
  double get carbohydrates;
  @override
  double get kilocalories;
  @override

  /// Weight of Product in grams.
  ///
  /// Can be empty.
  String get weight;
  @override
  @JsonKey(ignore: true)
  _$$_FoodValueCopyWith<_$_FoodValue> get copyWith =>
      throw _privateConstructorUsedError;
}
