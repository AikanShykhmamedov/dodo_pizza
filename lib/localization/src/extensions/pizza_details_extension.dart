import 'package:dodo_pizza/menu/menu.dart';

import '../generated/l10n.dart';
import 'product_size_extension.dart';

extension PizzaDetailsExtension on S {
  String pizzaDetails(Pizza pizza) {
    final sizeFullName = menuOfferProductSizeFull(pizza.size);
    final doughFullName = menuOfferDoughFullName(pizza.dough).toLowerCase();
    return '$sizeFullName, $doughFullName';
  }

  String pizzaDetailsFull(Pizza pizza) {
    var details = pizzaDetails(pizza);

    if (pizza.foodValue != null && pizza.foodValue!.weight.isNotEmpty) {
      final weight = menuFoodValueGramsValue(pizza.foodValue!.weight);
      details += ', $weight';
    }

    return details;
  }
}
