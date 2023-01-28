// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShoppingItem _$ShoppingItemFromJson(Map<String, dynamic> json) {
  return _ShoppingItem.fromJson(json);
}

/// @nodoc
mixin _$ShoppingItem {
  String get productId => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingItemCopyWith<ShoppingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingItemCopyWith<$Res> {
  factory $ShoppingItemCopyWith(
          ShoppingItem value, $Res Function(ShoppingItem) then) =
      _$ShoppingItemCopyWithImpl<$Res, ShoppingItem>;
  @useResult
  $Res call({String productId, num price});
}

/// @nodoc
class _$ShoppingItemCopyWithImpl<$Res, $Val extends ShoppingItem>
    implements $ShoppingItemCopyWith<$Res> {
  _$ShoppingItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShoppingItemCopyWith<$Res>
    implements $ShoppingItemCopyWith<$Res> {
  factory _$$_ShoppingItemCopyWith(
          _$_ShoppingItem value, $Res Function(_$_ShoppingItem) then) =
      __$$_ShoppingItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId, num price});
}

/// @nodoc
class __$$_ShoppingItemCopyWithImpl<$Res>
    extends _$ShoppingItemCopyWithImpl<$Res, _$_ShoppingItem>
    implements _$$_ShoppingItemCopyWith<$Res> {
  __$$_ShoppingItemCopyWithImpl(
      _$_ShoppingItem _value, $Res Function(_$_ShoppingItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? price = null,
  }) {
    return _then(_$_ShoppingItem(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
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
class _$_ShoppingItem implements _ShoppingItem {
  const _$_ShoppingItem({required this.productId, required this.price});

  factory _$_ShoppingItem.fromJson(Map<String, dynamic> json) =>
      _$$_ShoppingItemFromJson(json);

  @override
  final String productId;
  @override
  final num price;

  @override
  String toString() {
    return 'ShoppingItem(productId: $productId, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingItem &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingItemCopyWith<_$_ShoppingItem> get copyWith =>
      __$$_ShoppingItemCopyWithImpl<_$_ShoppingItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShoppingItemToJson(
      this,
    );
  }
}

abstract class _ShoppingItem implements ShoppingItem {
  const factory _ShoppingItem(
      {required final String productId,
      required final num price}) = _$_ShoppingItem;

  factory _ShoppingItem.fromJson(Map<String, dynamic> json) =
      _$_ShoppingItem.fromJson;

  @override
  String get productId;
  @override
  num get price;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppingItemCopyWith<_$_ShoppingItem> get copyWith =>
      throw _privateConstructorUsedError;
}
