// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Topping _$ToppingFromJson(Map<String, dynamic> json) {
  return _Topping.fromJson(json);
}

/// @nodoc
mixin _$Topping {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToppingCopyWith<Topping> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToppingCopyWith<$Res> {
  factory $ToppingCopyWith(Topping value, $Res Function(Topping) then) =
      _$ToppingCopyWithImpl<$Res, Topping>;
  @useResult
  $Res call({String id, String name, String imageUrl, num price});
}

/// @nodoc
class _$ToppingCopyWithImpl<$Res, $Val extends Topping>
    implements $ToppingCopyWith<$Res> {
  _$ToppingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ToppingCopyWith<$Res> implements $ToppingCopyWith<$Res> {
  factory _$$_ToppingCopyWith(
          _$_Topping value, $Res Function(_$_Topping) then) =
      __$$_ToppingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String imageUrl, num price});
}

/// @nodoc
class __$$_ToppingCopyWithImpl<$Res>
    extends _$ToppingCopyWithImpl<$Res, _$_Topping>
    implements _$$_ToppingCopyWith<$Res> {
  __$$_ToppingCopyWithImpl(_$_Topping _value, $Res Function(_$_Topping) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? price = null,
  }) {
    return _then(_$_Topping(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Topping implements _Topping {
  const _$_Topping(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.price});

  factory _$_Topping.fromJson(Map<String, dynamic> json) =>
      _$$_ToppingFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final num price;

  @override
  String toString() {
    return 'Topping(id: $id, name: $name, imageUrl: $imageUrl, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Topping &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToppingCopyWith<_$_Topping> get copyWith =>
      __$$_ToppingCopyWithImpl<_$_Topping>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToppingToJson(
      this,
    );
  }
}

abstract class _Topping implements Topping {
  const factory _Topping(
      {required final String id,
      required final String name,
      required final String imageUrl,
      required final num price}) = _$_Topping;

  factory _Topping.fromJson(Map<String, dynamic> json) = _$_Topping.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  num get price;
  @override
  @JsonKey(ignore: true)
  _$$_ToppingCopyWith<_$_Topping> get copyWith =>
      throw _privateConstructorUsedError;
}
