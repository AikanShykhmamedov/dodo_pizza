import 'package:dodo_pizza/menu/menu.dart';

import '../generated/l10n.dart';
import 'product_size_extension.dart';

// ignore_for_file: non_constant_identifier_names

extension PizzaDetailsExtension on S {
  String pizza_details(Pizza pizza) {
    final sizeFullName = menu_offer_product_size_full(pizza.size);
    final doughFullName = menu_offer_dough_full_name(pizza.dough).toLowerCase();
    return '$sizeFullName, $doughFullName';
  }

  String pizza_details_full(Pizza pizza) {
    var details = pizza_details(pizza);

    if (pizza.foodValue != null && pizza.foodValue!.weight.isNotEmpty) {
      final weight = menu_food_value_grams_value(pizza.foodValue!.weight);
      details += ', $weight';
    }

    return details;
  }
}
