import 'dart:collection';

import '../models/combo_slot_group_item.dart';
import '../models/dough.dart';
import '../models/menu_offer.dart';
import '../models/product.dart';
import '../models/product_bundle.dart';
import '../models/product_size.dart';
import '../models/shopping_item.dart';
import '../repositories/menu_repository.dart';
import 'combo_cubit.dart';
import 'product_cubit.dart';
import 'product_state.dart';
import 'single_product_cubit.dart';

typedef PriceById = Map<String, num>;
typedef PizzaByDough = SplayTreeMap<Dough, Pizza>;
typedef PizzaByDoughBySize = SplayTreeMap<ProductSize, PizzaByDough>;

class PizzaCubit extends ProductCubit<PizzaState>
    with SingleProductIngredientsMixin<PizzaState>, SingleProductToppingsMixin<PizzaState> {
  PizzaCubit._({
    required PriceById priceById,
    required PizzaByDoughBySize pizzaByDoughBySize,
    required super.initialState,
  })  : _priceById = priceById,
        _pizzaByDoughBySize = pizzaByDoughBySize;

  final PriceById _priceById;
  final PizzaByDoughBySize _pizzaByDoughBySize;

  factory PizzaCubit.fromOffer(MenuOffer offer, MenuRepository repository) {
    final priceById = <String, num>{
      for (final item in offer.shoppingItems) //
        item.productId: item.price,
    };
    final pizzaByDoughBySize = _getPizzaByDoughBySize(offer.shoppingItems, repository);
    final initialState = _getInitialState(priceById, pizzaByDoughBySize);

    return PizzaCubit._(
      priceById: priceById,
      pizzaByDoughBySize: pizzaByDoughBySize,
      initialState: initialState,
    );
  }

  factory PizzaCubit.forComboSlotGroup(ComboSlotGroup group, PizzaBundle? selectedBundle) {
    final priceById = <String, num>{
      for (final item in group) //
        item.product.id: item.extraPrice,
    };

    final pizzas = group.map<Pizza>((e) => e.product as Pizza);

    final pizzaByDoughBySize = PizzaByDoughBySize();
    for (final pizza in pizzas) {
      if (pizzaByDoughBySize.containsKey(pizza.size)) {
        pizzaByDoughBySize[pizza.size]![pizza.dough] = pizza;
      } else {
        pizzaByDoughBySize[pizza.size] = PizzaByDough.of(<Dough, Pizza>{pizza.dough: pizza});
      }
    }

    final initialState = _getInitialState(priceById, pizzaByDoughBySize, selectedBundle);

    return PizzaCubit._(
      priceById: priceById,
      pizzaByDoughBySize: pizzaByDoughBySize,
      initialState: initialState,
    );
  }

  static PizzaByDoughBySize _getPizzaByDoughBySize(
    List<ShoppingItem> items,
    MenuRepository repository,
  ) {
    final pizzaIds = items.map((e) => e.productId);
    final pizzas = repository.getProductsById<Pizza>(pizzaIds);

    final pizzaByDoughBySize = PizzaByDoughBySize();

    for (final pizza in pizzas) {
      if (pizzaByDoughBySize.containsKey(pizza.size)) {
        pizzaByDoughBySize[pizza.size]![pizza.dough] = pizza;
      } else {
        pizzaByDoughBySize[pizza.size] = PizzaByDough.of(<Dough, Pizza>{pizza.dough: pizza});
      }
    }

    return pizzaByDoughBySize;
  }

  static PizzaState _getInitialState(
    PriceById priceById,
    PizzaByDoughBySize pizzaByDoughBySize, [
    PizzaBundle? selectedBundle,
  ]) {
    final sizes = pizzaByDoughBySize.keys.toList();
    final initialSize = selectedBundle?.product.size ?? sizes[(sizes.length - 1) ~/ 2];

    final doughs = pizzaByDoughBySize[initialSize]!.keys.toList();
    final initialDough = selectedBundle?.product.dough ?? doughs[(doughs.length - 1) ~/ 2];

    final pizza = pizzaByDoughBySize[initialSize]![initialDough]!;

    final removedIngredients = selectedBundle?.removedIngredients ?? const {};
    final selectedToppingIds = selectedBundle?.selectedToppingIds ?? const {};

    final toppingsPrice = pizza.getToppingsPrice(selectedToppingIds);
    final price = priceById[pizza.id]! + toppingsPrice;

    return PizzaState(
      bundle: PizzaBundle(
        product: pizza,
        removedIngredients: removedIngredients,
        selectedToppingIds: selectedToppingIds,
        price: price,
      ),
      sizes: sizes,
      doughs: doughs,
    );
  }

  @override
  R map<R>({
    required R Function(SingleProductCubit cubit) singleProduct,
    required R Function(PizzaCubit cubit) pizza,
    required R Function(ComboCubit cubit) combo,
  }) {
    return pizza(this);
  }

  void setSize(ProductSize size) {
    final pizzaByDough = _pizzaByDoughBySize[size]!;
    final doughs = pizzaByDough.keys;
    final dough = pizzaByDough.containsKey(state.bundle.product.dough)
        ? state.bundle.product.dough
        : doughs.first;
    final pizza = pizzaByDough[dough]!;

    final ingredients = pizza.ingredients;
    final removedIngredients = state.bundle.removedIngredients.intersection(ingredients);

    final toppingIds = pizza.toppings.map<String>((e) => e.id).toSet();
    final selectedToppingIds = state.bundle.selectedToppingIds.intersection(toppingIds);

    final toppingsPrice = pizza.getToppingsPrice(selectedToppingIds);
    final price = _priceById[pizza.id]! + toppingsPrice;

    emit(state.copyWith(
      bundle: PizzaBundle(
        product: pizza,
        removedIngredients: removedIngredients,
        selectedToppingIds: selectedToppingIds,
        price: price,
      ),
      doughs: doughs,
    ));
  }

  void setDough(Dough dough) {
    final pizza = _pizzaByDoughBySize[state.bundle.product.size]![dough]!;

    final ingredients = pizza.ingredients;
    final removedIngredients = state.bundle.removedIngredients.intersection(ingredients);

    final toppingIds = pizza.toppings.map<String>((e) => e.id).toSet();
    final selectedToppingIds = state.bundle.selectedToppingIds.intersection(toppingIds);

    final toppingsPrice = pizza.getToppingsPrice(selectedToppingIds);
    final price = _priceById[pizza.id]! + toppingsPrice;

    emit(state.copyWith(
      bundle: PizzaBundle(
        product: pizza,
        removedIngredients: removedIngredients,
        selectedToppingIds: selectedToppingIds,
        price: price,
      ),
    ));
  }
}
