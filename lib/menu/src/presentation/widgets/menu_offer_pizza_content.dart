import 'package:dodo_pizza/app/app_colors.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:dodo_pizza/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/pizza_cubit.dart';
import '../../models/dough.dart';
import '../../models/ingredient.dart';
import '../dialogs/remove_ingredients_dialog.dart';
import 'ingredients_description.dart';
import 'menu_offer_content_base.dart';
import 'selector.dart';
import 'toppings_grid.dart';

class MenuOfferPizzaContent extends StatelessWidget {
  const MenuOfferPizzaContent({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PizzaCubit>();
    final bundle = cubit.state.bundle;
    final pizza = bundle.product;
    final sizes = cubit.state.sizes;
    final doughs = cubit.state.doughs;

    final toppings = ToppingsGrid(
      toppings: pizza.toppings,
      selectedToppings: bundle.selectedToppings,
      onToppingSelected: cubit.addTopping,
      onToppingUnselected: cubit.removeTopping,
    );

    Widget? removeIngredients;
    if (pizza.ingredients.any((e) => e.isRemovable)) {
      removeIngredients = InkWell(
        onTap: () => _onRemoveIngredientsPressed(
          context,
          bundle.product.ingredients,
          bundle.removedIngredients,
        ),
        child: Text(
          S.of(context).menu_offer_remove_ingredients,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
      );
    }

    return MenuOfferContentBase(
      imageUrl: pizza.imageUrl,
      name: pizza.name,
      details: S.of(context).pizza_details_full(pizza),
      products: [pizza],
      price: bundle.price,
      children: [
        const SizedBox(height: 8),
        if (pizza.ingredients.isEmpty)
          Text(
            pizza.description,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).extension<AppColors>()!.textSecondary,
                ),
          )
        else
          IngredientsDescription(
            ingredients: pizza.ingredients,
            removedIngredients: bundle.removedIngredients,
          ),
        const SizedBox(height: 16),
        if (removeIngredients != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: removeIngredients,
            ),
          ),
        Selector<ProductSize>(
          items: [
            for (final size in sizes)
              SelectorItem(
                value: size,
                isSelected: pizza.size == size,
                label: Text(
                  S.of(context).menu_offer_product_size(size),
                  style: Theme.of(context).textTheme.labelSmall!,
                ),
              ),
          ],
          onSelected: cubit.setSize,
        ),
        const SizedBox(height: 8),
        Selector<Dough>(
          items: [
            for (final dough in doughs)
              SelectorItem(
                value: dough,
                isSelected: pizza.dough == dough,
                label: Text(
                  S.of(context).menu_offer_dough_name(dough),
                  style: Theme.of(context).textTheme.labelSmall!,
                ),
              ),
          ],
          onSelected: cubit.setDough,
        ),
        const SizedBox(height: 16),
        Text(
          S.of(context).menu_offer_add_taste,
          style: Theme.of(context).textTheme.bodyLarge!,
        ),
        const SizedBox(height: 16),
        toppings,
      ],
    );
  }

  void _onRemoveIngredientsPressed(
    BuildContext context,
    Set<Ingredient> ingredients,
    Set<Ingredient> removedIngredients,
  ) async {
    final removable = ingredients.where((e) => e.isRemovable).toSet();
    final removed = await showRemoveIngredientsDialog(
      context: context,
      ingredients: removable,
      removedIngredients: removedIngredients,
    );

    if (removed != null) {
      context.read<PizzaCubit>().setRemovedIngredients(removed);
    }
  }
}
