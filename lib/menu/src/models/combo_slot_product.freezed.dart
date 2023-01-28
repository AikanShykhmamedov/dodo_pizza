// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'combo_slot_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComboSlotProduct _$ComboSlotProductFromJson(Map<String, dynamic> json) {
  return _ComboSlotProduct.fromJson(json);
}

/// @nodoc
mixin _$ComboSlotProduct {
  String get productId => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  num get extraPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComboSlotProductCopyWith<ComboSlotProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComboSlotProductCopyWith<$Res> {
  factory $ComboSlotProductCopyWith(
          ComboSlotProduct value, $Res Function(ComboSlotProduct) then) =
      _$ComboSlotProductCopyWithImpl<$Res, ComboSlotProduct>;
  @useResult
  $Res call({String productId, int priority, num price, num extraPrice});
}

/// @nodoc
class _$ComboSlotProductCopyWithImpl<$Res, $Val extends ComboSlotProduct>
    implements $ComboSlotProductCopyWith<$Res> {
  _$ComboSlotProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? priority = null,
    Object? price = null,
    Object? extraPrice = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      extraPrice: null == extraPrice
          ? _value.extraPrice
          : extraPrice // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComboSlotProductCopyWith<$Res>
    implements $ComboSlotProductCopyWith<$Res> {
  factory _$$_ComboSlotProductCopyWith(
          _$_ComboSlotProduct value, $Res Function(_$_ComboSlotProduct) then) =
      __$$_ComboSlotProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId, int priority, num price, num extraPrice});
}

/// @nodoc
class __$$_ComboSlotProductCopyWithImpl<$Res>
    extends _$ComboSlotProductCopyWithImpl<$Res, _$_ComboSlotProduct>
    implements _$$_ComboSlotProductCopyWith<$Res> {
  __$$_ComboSlotProductCopyWithImpl(
      _$_ComboSlotProduct _value, $Res Function(_$_ComboSlotProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? priority = null,
    Object? price = null,
    Object? extraPrice = null,
  }) {
    return _then(_$_ComboSlotProduct(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      extraPrice: null == extraPrice
          ? _value.extraPrice
          : extraPrice // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComboSlotProduct implements _ComboSlotProduct {
  const _$_ComboSlotProduct(
      {required this.productId,
      required this.priority,
      required this.price,
      required this.extraPrice});

  factory _$_ComboSlotProduct.fromJson(Map<String, dynamic> json) =>
      _$$_ComboSlotProductFromJson(json);

  @override
  final String productId;
  @override
  final int priority;
  @override
  final num price;
  @override
  final num extraPrice;

  @override
  String toString() {
    return 'ComboSlotProduct(productId: $productId, priority: $priority, price: $price, extraPrice: $extraPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComboSlotProduct &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.extraPrice, extraPrice) ||
                other.extraPrice == extraPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, priority, price, extraPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComboSlotProductCopyWith<_$_ComboSlotProduct> get copyWith =>
      __$$_ComboSlotProductCopyWithImpl<_$_ComboSlotProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComboSlotProductToJson(
      this,
    );
  }
}

abstract class _ComboSlotProduct implements ComboSlotProduct {
  const factory _ComboSlotProduct(
      {required final String productId,
      required final int priority,
      required final num price,
      required final num extraPrice}) = _$_ComboSlotProduct;

  factory _ComboSlotProduct.fromJson(Map<String, dynamic> json) =
      _$_ComboSlotProduct.fromJson;

  @override
  String get productId;
  @override
  int get priority;
  @override
  num get price;
  @override
  num get extraPrice;
  @override
  @JsonKey(ignore: true)
  _$$_ComboSlotProductCopyWith<_$_ComboSlotProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
