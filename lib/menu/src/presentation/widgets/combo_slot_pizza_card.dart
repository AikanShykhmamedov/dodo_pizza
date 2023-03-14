import 'package:dodo_pizza/app/app_colors.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/pizza_cubit.dart';
import '../../models/dough.dart';
import '../../models/ingredient.dart';
import '../../models/product_bundle.dart';
import '../../models/product_size.dart';
import '../../models/topping.dart';
import 'combo_slot_product_card_base.dart';
import 'combo_slot_product_composition_card.dart';
import 'flipper.dart';
import 'ingredients_description.dart';
import 'selector.dart';

class ComboSlotPizzaCard extends StatefulWidget {
  const ComboSlotPizzaCard({
    super.key,
    required this.selectedBundle,
    required this.onSelect,
  });

  final PizzaBundle? selectedBundle;
  final void Function(PizzaBundle) onSelect;

  @override
  State<ComboSlotPizzaCard> createState() => _ComboSlotPizzaCardState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<PizzaBundle?>('selectedBundle', selectedBundle));
    properties.add(DiagnosticsProperty<Function>('onSelect', onSelect));
  }
}

class _ComboSlotPizzaCardState extends State<ComboSlotPizzaCard> {
  var _isFlipped = false;

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PizzaCubit>();
    final bundle = cubit.state.bundle;
    final pizza = bundle.product;
    final sizes = cubit.state.sizes;
    final doughs = cubit.state.doughs;

    final isProductSelected = widget.selectedBundle?.product == pizza;
    final isBundleChanged = isProductSelected && _isBundleChanged(widget.selectedBundle!, bundle);

    final canChangeComposition =
        pizza.toppings.isNotEmpty || pizza.ingredients.any((e) => e.isRemovable);

    final foreground = ComboSlotProductCardBase(
      imageUrl: pizza.imageUrl,
      name: pizza.name,
      details: S.of(context).pizza_details(pizza),
      description: pizza.ingredients.isNotEmpty ? null : pizza.description,
      price: bundle.price,
      products: [pizza],
      isGroupSelected: widget.selectedBundle != null,
      isProductSelected: isProductSelected,
      isBundleChanged: isBundleChanged,
      onSelect: () => widget.onSelect(bundle),
      children: [
        IngredientsDescription(
          ingredients: pizza.ingredients,
          removedIngredients: bundle.removedIngredients,
          selectedToppings: bundle.selectedToppings,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).extension<AppColors>()!.textSecondary,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        if (canChangeComposition)
          SizedBox(
            height: 32,
            child: TextButton(
              onPressed: _showBackground,
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              child: Text(S.of(context).menu_offer_combo_slot_product_card_change_composition),
            ),
          ),
        const Spacer(),
        SizedBox(
          height: 44,
          child: Selector<ProductSize>(
            items: [
              for (final size in sizes)
                SelectorItem(
                  value: size,
                  isSelected: size == pizza.size,
                  label: Text(
                    S.of(context).menu_offer_product_size(size),
                    style: Theme.of(context).textTheme.labelSmall!,
                  ),
                ),
            ],
            onSelected: cubit.setSize,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 44,
          child: Selector<Dough>(
            items: [
              for (final dough in doughs)
                SelectorItem(
                  value: dough,
                  isSelected: dough == pizza.dough,
                  label: Text(
                    S.of(context).menu_offer_dough_name(dough),
                    style: Theme.of(context).textTheme.labelSmall!,
                  ),
                ),
            ],
            onSelected: cubit.setDough,
          ),
        ),
      ],
    );

    if (!canChangeComposition) {
      return foreground;
    }

    final background = ComboSlotProductCompositionCard(
      toppings: pizza.toppings,
      selectedToppings: bundle.selectedToppings,
      ingredients: pizza.ingredients.where((e) => e.isRemovable).toSet(),
      removedIngredients: bundle.removedIngredients,
      onCancel: _showForeground,
      onSave: (selectedToppings, removedIngredients) =>
          _save(cubit, selectedToppings, removedIngredients),
    );

    return Flipper(
      foreground: foreground,
      background: background,
      isFlipped: _isFlipped,
    );
  }

  bool _isBundleChanged(PizzaBundle selectedBundle, PizzaBundle bundle) {
    final isSelectedToppingIdsChanged =
        selectedBundle.selectedToppingIds.difference(bundle.selectedToppingIds).isNotEmpty ||
            bundle.selectedToppingIds.difference(selectedBundle.selectedToppingIds).isNotEmpty;
    final isRemovedIngredientsChanged =
        selectedBundle.removedIngredients.difference(bundle.removedIngredients).isNotEmpty ||
            bundle.removedIngredients.difference(selectedBundle.removedIngredients).isNotEmpty;

    return isSelectedToppingIdsChanged || isRemovedIngredientsChanged;
  }

  void _showBackground() {
    setState(() {
      _isFlipped = true;
    });
  }

  void _showForeground() {
    setState(() {
      _isFlipped = false;
    });
  }

  void _save(PizzaCubit cubit, Set<Topping> selectedToppings, Set<Ingredient> removedIngredients) {
    cubit.setToppings(selectedToppings);
    cubit.setRemovedIngredients(removedIngredients);
    _showForeground();
  }
}
