import 'dart:collection';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/ingredient.dart';
import '../models/menu_offer.dart';
import '../models/product.dart';
import '../models/product_bundle.dart';
import '../models/product_size.dart';
import '../models/shopping_item.dart';
import '../models/topping.dart';
import '../repositories/menu_repository.dart';
import 'combo_cubit.dart';
import 'pizza_cubit.dart';
import 'product_cubit.dart';
import 'product_state.dart';

typedef PriceById = Map<String, num>;
typedef ProductBySize = SplayTreeMap<ProductSize, SingleProduct>;

class SingleProductCubit extends ProductCubit<SingleProductState>
    with SingleProductIngredientsMixin, SingleProductToppingsMixin {
  SingleProductCubit._({
    required PriceById priceById,
    required ProductBySize? productBySize,
    required super.initialState,
  })  : _priceById = priceById,
        _productBySize = productBySize;

  final PriceById _priceById;
  final ProductBySize? _productBySize;

  factory SingleProductCubit.fromOffer(MenuOffer offer, MenuRepository repository) {
    final priceById = <String, num>{
      for (final item in offer.shoppingItems) //
        item.productId: item.price,
    };

    final ProductBySize? productBySize;
    final SingleProduct product;
    if (offer.shoppingItems.length == 1) {
      productBySize = null;
      final productId = offer.shoppingItems.first.productId;
      product = repository.getProductById(productId) as SingleProduct;
    } else {
      productBySize = _geProductBySize(offer.shoppingItems, repository);
      final sizes = productBySize.keys.toList();
      final initialSize = sizes[(sizes.length - 1) ~/ 2];
      product = productBySize[initialSize]!;
    }

    final price = priceById[product.id]!;

    final initialState = SingleProductState(
      bundle: SingleProductBundle(
        product: product,
        removedIngredients: const {},
        selectedToppingIds: const {},
        price: price,
      ),
      sizes: productBySize?.keys,
    );

    return SingleProductCubit._(
      priceById: priceById,
      productBySize: productBySize,
      initialState: initialState,
    );
  }

  static ProductBySize _geProductBySize(List<ShoppingItem> items, MenuRepository repository) {
    final productIds = items.map((e) => e.productId);
    final products = repository.getProductsById<SingleProduct>(productIds);

    final productBySize = ProductBySize();

    for (final product in products) {
      productBySize[product.size!] = product;
    }

    return productBySize;
  }

  @override
  R map<R>({
    required R Function(SingleProductCubit cubit) singleProduct,
    required R Function(PizzaCubit cubit) pizza,
    required R Function(ComboCubit cubit) combo,
  }) {
    return singleProduct(this);
  }

  void setSize(ProductSize size) {
    final product = _productBySize![size]!;

    final ingredients = product.ingredients;
    final removedIngredients = state.bundle.removedIngredients.intersection(ingredients);

    final toppingIds = product.toppings.map<String>((e) => e.id).toSet();
    final selectedToppingIds = state.bundle.selectedToppingIds.intersection(toppingIds);

    final toppingsPrice = product.getToppingsPrice(selectedToppingIds);
    final price = _priceById[product.id]! + toppingsPrice;

    emit(state.copyWith(
      bundle: SingleProductBundle(
        product: product,
        removedIngredients: removedIngredients,
        selectedToppingIds: selectedToppingIds,
        price: price,
      ),
    ));
  }
}

mixin SingleProductIngredientsMixin<S extends SingleProductState> on Cubit<S> {
  void setRemovedIngredients(Set<Ingredient> removedIngredients) {
    emit(state.copyWith(
      bundle: state.bundle.copyWith(
        removedIngredients: removedIngredients,
      ),
    ) as S);
  }
}

mixin SingleProductToppingsMixin<T extends SingleProductState> on Cubit<T> {
  void addTopping(Topping topping) {
    final selectedToppingIds = state.bundle.selectedToppingIds.toSet()..add(topping.id);
    final price = state.bundle.price + topping.price;

    emit(state.copyWith(
      bundle: state.bundle.copyWith(
        selectedToppingIds: selectedToppingIds,
        price: price,
      ),
    ) as T);
  }

  void removeTopping(Topping topping) {
    final selectedToppingIds = state.bundle.selectedToppingIds.toSet()..remove(topping.id);
    final price = state.bundle.price - topping.price;

    emit(state.copyWith(
      bundle: state.bundle.copyWith(
        selectedToppingIds: selectedToppingIds,
        price: price,
      ),
    ) as T);
  }
}
