// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'combo_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComboSlot _$ComboSlotFromJson(Map<String, dynamic> json) {
  return _ComboSlot.fromJson(json);
}

/// @nodoc
mixin _$ComboSlot {
  String get defaultProductId => throw _privateConstructorUsedError;
  List<ComboSlotProduct> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComboSlotCopyWith<ComboSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComboSlotCopyWith<$Res> {
  factory $ComboSlotCopyWith(ComboSlot value, $Res Function(ComboSlot) then) =
      _$ComboSlotCopyWithImpl<$Res, ComboSlot>;
  @useResult
  $Res call({String defaultProductId, List<ComboSlotProduct> products});
}

/// @nodoc
class _$ComboSlotCopyWithImpl<$Res, $Val extends ComboSlot>
    implements $ComboSlotCopyWith<$Res> {
  _$ComboSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultProductId = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      defaultProductId: null == defaultProductId
          ? _value.defaultProductId
          : defaultProductId // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ComboSlotProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComboSlotCopyWith<$Res> implements $ComboSlotCopyWith<$Res> {
  factory _$$_ComboSlotCopyWith(
          _$_ComboSlot value, $Res Function(_$_ComboSlot) then) =
      __$$_ComboSlotCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String defaultProductId, List<ComboSlotProduct> products});
}

/// @nodoc
class __$$_ComboSlotCopyWithImpl<$Res>
    extends _$ComboSlotCopyWithImpl<$Res, _$_ComboSlot>
    implements _$$_ComboSlotCopyWith<$Res> {
  __$$_ComboSlotCopyWithImpl(
      _$_ComboSlot _value, $Res Function(_$_ComboSlot) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultProductId = null,
    Object? products = null,
  }) {
    return _then(_$_ComboSlot(
      defaultProductId: null == defaultProductId
          ? _value.defaultProductId
          : defaultProductId // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ComboSlotProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComboSlot extends _ComboSlot {
  const _$_ComboSlot(
      {required this.defaultProductId,
      required final List<ComboSlotProduct> products})
      : _products = products,
        super._();

  factory _$_ComboSlot.fromJson(Map<String, dynamic> json) =>
      _$$_ComboSlotFromJson(json);

  @override
  final String defaultProductId;
  final List<ComboSlotProduct> _products;
  @override
  List<ComboSlotProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ComboSlot(defaultProductId: $defaultProductId, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComboSlot &&
            (identical(other.defaultProductId, defaultProductId) ||
                other.defaultProductId == defaultProductId) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, defaultProductId,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComboSlotCopyWith<_$_ComboSlot> get copyWith =>
      __$$_ComboSlotCopyWithImpl<_$_ComboSlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComboSlotToJson(
      this,
    );
  }
}

abstract class _ComboSlot extends ComboSlot {
  const factory _ComboSlot(
      {required final String defaultProductId,
      required final List<ComboSlotProduct> products}) = _$_ComboSlot;
  const _ComboSlot._() : super._();

  factory _ComboSlot.fromJson(Map<String, dynamic> json) =
      _$_ComboSlot.fromJson;

  @override
  String get defaultProductId;
  @override
  List<ComboSlotProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$_ComboSlotCopyWith<_$_ComboSlot> get copyWith =>
      throw _privateConstructorUsedError;
}
