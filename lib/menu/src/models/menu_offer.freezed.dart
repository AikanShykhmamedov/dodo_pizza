// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuOffer _$MenuOfferFromJson(Map<String, dynamic> json) {
  return _MenuOffer.fromJson(json);
}

/// @nodoc
mixin _$MenuOffer {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  ProductSize? get size => throw _privateConstructorUsedError;
  List<ShoppingItem> get shoppingItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuOfferCopyWith<MenuOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuOfferCopyWith<$Res> {
  factory $MenuOfferCopyWith(MenuOffer value, $Res Function(MenuOffer) then) =
      _$MenuOfferCopyWithImpl<$Res, MenuOffer>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      int priority,
      Category category,
      ProductSize? size,
      List<ShoppingItem> shoppingItems});

  $ProductSizeCopyWith<$Res>? get size;
}

/// @nodoc
class _$MenuOfferCopyWithImpl<$Res, $Val extends MenuOffer>
    implements $MenuOfferCopyWith<$Res> {
  _$MenuOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? priority = null,
    Object? category = null,
    Object? size = freezed,
    Object? shoppingItems = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as ProductSize?,
      shoppingItems: null == shoppingItems
          ? _value.shoppingItems
          : shoppingItems // ignore: cast_nullable_to_non_nullable
              as List<ShoppingItem>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductSizeCopyWith<$Res>? get size {
    if (_value.size == null) {
      return null;
    }

    return $ProductSizeCopyWith<$Res>(_value.size!, (value) {
      return _then(_value.copyWith(size: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MenuOfferCopyWith<$Res> implements $MenuOfferCopyWith<$Res> {
  factory _$$_MenuOfferCopyWith(
          _$_MenuOffer value, $Res Function(_$_MenuOffer) then) =
      __$$_MenuOfferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      int priority,
      Category category,
      ProductSize? size,
      List<ShoppingItem> shoppingItems});

  @override
  $ProductSizeCopyWith<$Res>? get size;
}

/// @nodoc
class __$$_MenuOfferCopyWithImpl<$Res>
    extends _$MenuOfferCopyWithImpl<$Res, _$_MenuOffer>
    implements _$$_MenuOfferCopyWith<$Res> {
  __$$_MenuOfferCopyWithImpl(
      _$_MenuOffer _value, $Res Function(_$_MenuOffer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? priority = null,
    Object? category = null,
    Object? size = freezed,
    Object? shoppingItems = null,
  }) {
    return _then(_$_MenuOffer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as ProductSize?,
      shoppingItems: null == shoppingItems
          ? _value._shoppingItems
          : shoppingItems // ignore: cast_nullable_to_non_nullable
              as List<ShoppingItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuOffer extends _MenuOffer {
  const _$_MenuOffer(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.priority,
      required this.category,
      required this.size,
      required final List<ShoppingItem> shoppingItems})
      : _shoppingItems = shoppingItems,
        super._();

  factory _$_MenuOffer.fromJson(Map<String, dynamic> json) =>
      _$$_MenuOfferFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final int priority;
  @override
  final Category category;
  @override
  final ProductSize? size;
  final List<ShoppingItem> _shoppingItems;
  @override
  List<ShoppingItem> get shoppingItems {
    if (_shoppingItems is EqualUnmodifiableListView) return _shoppingItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shoppingItems);
  }

  @override
  String toString() {
    return 'MenuOffer(id: $id, name: $name, description: $description, imageUrl: $imageUrl, priority: $priority, category: $category, size: $size, shoppingItems: $shoppingItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenuOffer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality()
                .equals(other._shoppingItems, _shoppingItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      imageUrl,
      priority,
      category,
      size,
      const DeepCollectionEquality().hash(_shoppingItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MenuOfferCopyWith<_$_MenuOffer> get copyWith =>
      __$$_MenuOfferCopyWithImpl<_$_MenuOffer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuOfferToJson(
      this,
    );
  }
}

abstract class _MenuOffer extends MenuOffer {
  const factory _MenuOffer(
      {required final String id,
      required final String name,
      required final String description,
      required final String imageUrl,
      required final int priority,
      required final Category category,
      required final ProductSize? size,
      required final List<ShoppingItem> shoppingItems}) = _$_MenuOffer;
  const _MenuOffer._() : super._();

  factory _MenuOffer.fromJson(Map<String, dynamic> json) =
      _$_MenuOffer.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  int get priority;
  @override
  Category get category;
  @override
  ProductSize? get size;
  @override
  List<ShoppingItem> get shoppingItems;
  @override
  @JsonKey(ignore: true)
  _$$_MenuOfferCopyWith<_$_MenuOffer> get copyWith =>
      throw _privateConstructorUsedError;
}
