// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleProduct _$SingleProductFromJson(Map<String, dynamic> json) =>
    SingleProduct(
      id: json['id'] as String,
      metaProductId: json['metaProductId'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      category: $enumDecode(_$CategoryEnumMap, json['category']),
      size: json['size'] == null
          ? null
          : ProductSize.fromJson(json['size'] as Map<String, dynamic>),
      foodValue: json['foodValue'] == null
          ? null
          : FoodValue.fromJson(json['foodValue'] as Map<String, dynamic>),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toSet(),
      toppings: (json['toppings'] as List<dynamic>)
          .map((e) => Topping.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$SingleProductToJson(SingleProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaProductId': instance.metaProductId,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'category': _$CategoryEnumMap[instance.category]!,
      'size': instance.size,
      'foodValue': instance.foodValue,
      'ingredients': instance.ingredients.toList(),
      'toppings': instance.toppings.toList(),
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

Pizza _$PizzaFromJson(Map<String, dynamic> json) => Pizza(
      id: json['id'] as String,
      metaProductId: json['metaProductId'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      category: $enumDecode(_$CategoryEnumMap, json['category']),
      foodValue: json['foodValue'] == null
          ? null
          : FoodValue.fromJson(json['foodValue'] as Map<String, dynamic>),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toSet(),
      toppings: (json['toppings'] as List<dynamic>)
          .map((e) => Topping.fromJson(e as Map<String, dynamic>))
          .toSet(),
      size: ProductSize.fromJson(json['size'] as Map<String, dynamic>),
      dough: $enumDecode(_$DoughEnumMap, json['dough']),
    );

Map<String, dynamic> _$PizzaToJson(Pizza instance) => <String, dynamic>{
      'id': instance.id,
      'metaProductId': instance.metaProductId,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'category': _$CategoryEnumMap[instance.category]!,
      'foodValue': instance.foodValue,
      'ingredients': instance.ingredients.toList(),
      'toppings': instance.toppings.toList(),
      'size': instance.size,
      'dough': _$DoughEnumMap[instance.dough]!,
    };

const _$DoughEnumMap = {
  Dough.original: 0,
  Dough.thin: 1,
};

Combo _$ComboFromJson(Map<String, dynamic> json) => Combo(
      id: json['id'] as String,
      metaProductId: json['metaProductId'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      category: $enumDecode(_$CategoryEnumMap, json['category']),
      slots: (json['slots'] as List<dynamic>)
          .map((e) => ComboSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ComboToJson(Combo instance) => <String, dynamic>{
      'id': instance.id,
      'metaProductId': instance.metaProductId,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'category': _$CategoryEnumMap[instance.category]!,
      'slots': instance.slots,
    };
