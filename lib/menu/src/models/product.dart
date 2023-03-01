import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'category.dart';
import 'combo_slot.dart';
import 'dough.dart';
import 'food_value.dart';
import 'ingredient.dart';
import 'product_size.dart';
import 'topping.dart';

part 'product.g.dart';

abstract class Product extends Equatable {
  const Product({
    required this.id,
    required this.metaProductId,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.category,
  });

  final String id;
  final String? metaProductId;
  final String name;
  final String description;
  final String imageUrl;
  final Category category;

  static Product resolveFromJson(Map<String, dynamic> json) {
    final category = Category.values[json['category'] as int];

    switch (category) {
      case Category.pizza:
        return Pizza.fromJson(json);
      case Category.combo:
        return Combo.fromJson(json);
      default:
        return SingleProduct.fromJson(json);
    }
  }

  @override
  List<Object?> get props => [
        id,
        metaProductId,
        name,
        description,
        imageUrl,
        category,
      ];
}

@JsonSerializable()
class SingleProduct extends Product {
  const SingleProduct({
    required super.id,
    required super.metaProductId,
    required super.name,
    required super.description,
    required super.imageUrl,
    required super.category,
    required this.size,
    required this.foodValue,
    required this.ingredients,
    required this.toppings,
  });

  final ProductSize? size;
  final FoodValue? foodValue;
  final Set<Ingredient> ingredients;
  final Set<Topping> toppings;

  factory SingleProduct.fromJson(Map<String, dynamic> json) => _$SingleProductFromJson(json);

  Map<String, dynamic> toJson() => _$SingleProductToJson(this);

  num getToppingsPrice(Set<String> selectedIds) {
    num price = 0;

    final ids = selectedIds.toSet();

    for (final topping in toppings) {
      final didRemove = ids.remove(topping.id);
      if (didRemove) {
        price += topping.price;
      }

      if (ids.isEmpty) {
        break;
      }
    }

    return price;
  }

  @override
  List<Object?> get props => super.props
    ..addAll([
      size,
      foodValue,
      ingredients,
      toppings,
    ]);
}

@JsonSerializable()
class Pizza extends SingleProduct {
  const Pizza({
    required super.id,
    required super.metaProductId,
    required super.name,
    required super.description,
    required super.imageUrl,
    required super.category,
    required super.foodValue,
    required super.ingredients,
    required super.toppings,
    required this.size,
    required this.dough,
  }) : super(size: size);

  @override
  final ProductSize size; // ignore: overridden_fields
  final Dough dough;

  factory Pizza.fromJson(Map<String, dynamic> json) => _$PizzaFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PizzaToJson(this);

  @override
  List<Object?> get props => super.props..add(dough);
}

@JsonSerializable()
class Combo extends Product {
  const Combo({
    required super.id,
    required super.metaProductId,
    required super.name,
    required super.description,
    required super.imageUrl,
    required super.category,
    required this.slots,
  });

  final List<ComboSlot> slots;

  factory Combo.fromJson(Map<String, dynamic> json) => _$ComboFromJson(json);

  Map<String, dynamic> toJson() => _$ComboToJson(this);

  num get fullPrice => slots //
      .map<num>((e) => e.defaultProduct.price)
      .reduce((a, b) => a + b);

  @override
  List<Object?> get props => super.props..add(slots);
}
