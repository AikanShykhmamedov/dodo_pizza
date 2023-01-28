// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuOffer _$$_MenuOfferFromJson(Map<String, dynamic> json) => _$_MenuOffer(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      priority: json['priority'] as int,
      category: $enumDecode(_$CategoryEnumMap, json['category']),
      size: json['size'] == null
          ? null
          : ProductSize.fromJson(json['size'] as Map<String, dynamic>),
      shoppingItems: (json['shoppingItems'] as List<dynamic>)
          .map((e) => ShoppingItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MenuOfferToJson(_$_MenuOffer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'priority': instance.priority,
      'category': _$CategoryEnumMap[instance.category]!,
      'size': instance.size,
      'shoppingItems': instance.shoppingItems,
    };

const _$CategoryEnumMap = {
  Category.pizza: 0,
  Category.combo: 1,
  Category.snacks: 2,
  Category.desserts: 3,
  Category.drinks: 4,
  Category.sauces: 5,
  Category.goods: 6,
};
