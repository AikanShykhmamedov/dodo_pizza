import 'package:equatable/equatable.dart';

import 'combo_slot.dart';
import 'ingredient.dart';
import 'product.dart';
import 'topping.dart';

// ignore_for_file: overridden_fields

abstract class ProductBundle extends Equatable {
  const ProductBundle({
    required this.product,
    required this.price,
  });

  final Product product;
  final num price;

  @override
  List<Object> get props => [
        product,
        price,
      ];
}

class SingleProductBundle extends ProductBundle {
  const SingleProductBundle({
    required this.product,
    required this.removedIngredients,
    required this.selectedToppingIds,
    required super.price,
  }) : super(product: product);

  @override
  final SingleProduct product;
  final Set<Ingredient> removedIngredients;
  final Set<String> selectedToppingIds;

  Set<Topping> get selectedToppings => selectedToppingIds //
      .map((id) => product.toppings.firstWhere((e) => e.id == id))
      .toSet();

  SingleProductBundle copyWith({
    Set<Ingredient>? removedIngredients,
    Set<String>? selectedToppingIds,
    num? price,
  }) {
    return SingleProductBundle(
      product: product,
      removedIngredients: removedIngredients ?? this.removedIngredients,
      selectedToppingIds: selectedToppingIds ?? this.selectedToppingIds,
      price: price ?? this.price,
    );
  }

  @override
  List<Object> get props => super.props
    ..addAll([
      product,
      removedIngredients,
      selectedToppingIds,
    ]);
}

class PizzaBundle extends SingleProductBundle {
  const PizzaBundle({
    required this.product,
    required super.removedIngredients,
    required super.selectedToppingIds,
    required super.price,
  }) : super(product: product);

  @override
  final Pizza product;

  @override
  PizzaBundle copyWith({
    Set<Ingredient>? removedIngredients,
    Set<String>? selectedToppingIds,
    num? price,
  }) {
    return PizzaBundle(
      product: product,
      removedIngredients: removedIngredients ?? this.removedIngredients,
      selectedToppingIds: selectedToppingIds ?? this.selectedToppingIds,
      price: price ?? this.price,
    );
  }
}

typedef SlotProductBundles = Map<ComboSlot, SingleProductBundle>;

class ComboBundle extends ProductBundle {
  const ComboBundle({
    required this.product,
    required this.slotProductBundles,
    required super.price,
    required this.basePrice,
    required this.fullPrice,
  }) : super(product: product);

  @override
  final Combo product;
  final SlotProductBundles slotProductBundles;
  final num basePrice;
  final num fullPrice;

  ComboBundle copyWith({
    SlotProductBundles? slotProductBundles,
    num? price,
    num? fullPrice,
  }) {
    return ComboBundle(
      product: product,
      slotProductBundles: slotProductBundles ?? this.slotProductBundles,
      price: price ?? this.price,
      basePrice: basePrice,
      fullPrice: fullPrice ?? this.fullPrice,
    );
  }

  @override
  List<Object> get props => super.props
    ..addAll([
      slotProductBundles,
      basePrice,
      fullPrice,
    ]);
}
