import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/ingredient.dart';
import '../../models/topping.dart';
import 'topping_tile.dart';

typedef OnSave = void Function(
  Set<Topping> selectedToppings,
  Set<Ingredient> removedIngredients,
);

class ComboSlotProductCompositionCard extends StatefulWidget {
  const ComboSlotProductCompositionCard({
    super.key,
    required this.toppings,
    required this.selectedToppings,
    required this.ingredients,
    required this.removedIngredients,
    required this.onCancel,
    required this.onSave,
  });

  final Set<Topping> toppings;
  final Set<Topping> selectedToppings;
  final Set<Ingredient> ingredients;
  final Set<Ingredient> removedIngredients;
  final VoidCallback onCancel;
  final OnSave onSave;

  @override
  State<ComboSlotProductCompositionCard> createState() => _ComboSlotProductCompositionCardState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<Topping>('toppings', toppings));
    properties.add(IterableProperty<Topping>('selectedToppings', selectedToppings));
    properties.add(IterableProperty<Ingredient>('ingredients', ingredients));
    properties.add(IterableProperty<Ingredient>('removedIngredients', removedIngredients));
    properties.add(DiagnosticsProperty<Function>('onCancel', onCancel));
    properties.add(DiagnosticsProperty<Function>('onSave', onSave));
  }
}

class _ComboSlotProductCompositionCardState extends State<ComboSlotProductCompositionCard> {
  late final Set<Topping> _selectedToppings;
  late final Set<Ingredient> _removedIngredients;

  bool get _selectedToppingsChanged =>
      widget.selectedToppings.difference(_selectedToppings).isNotEmpty ||
      _selectedToppings.difference(widget.selectedToppings).isNotEmpty;

  bool get _removedIngredientsChanged =>
      widget.removedIngredients.difference(_removedIngredients).isNotEmpty ||
      _removedIngredients.difference(widget.removedIngredients).isNotEmpty;

  @override
  void initState() {
    super.initState();
    _selectedToppings = Set.from(widget.selectedToppings);
    _removedIngredients = Set.from(widget.removedIngredients);
  }

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleMedium!.copyWith(
          fontSize: 18,
        );

    final content = CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverToBoxAdapter(
            child: Text(
              S.of(context).menu_offer_add_taste,
              style: titleStyle,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              widget.toppings
                  .expand<Widget>((topping) sync* {
                    yield const SizedBox(height: 16);

                    final isSelected = _selectedToppings.contains(topping);
                    final onToppingPressed = isSelected ? _onToppingUnselected : _onToppingSelected;

                    yield ToppingTile(
                      onPressed: () => onToppingPressed(topping),
                      topping: topping,
                      isSelected: isSelected,
                    );
                  })
                  .skip(1)
                  .toList(),
            ),
          ),
        ),
        if (widget.ingredients.isNotEmpty)
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).menu_offer_combo_slot_product_card_change_ingredients,
                    style: titleStyle,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      for (final ingredient in widget.ingredients)
                        ChoiceChip(
                          label: Text(toBeginningOfSentenceCase(ingredient.name)!),
                          onSelected: (select) => _onIngredientSelected(select, ingredient),
                          selected: !_removedIngredients.contains(ingredient),
                          pressElevation: 4.0,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );

    final bottomButtons = Padding(
      padding: const EdgeInsets.all(16),
      child: _selectedToppingsChanged || _removedIngredientsChanged
          ? Row(
              children: [
                SizedBox.square(
                  dimension: 48,
                  child: Material(
                    type: MaterialType.circle,
                    color: Theme.of(context).colorScheme.background,
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: widget.onCancel,
                      child: Icon(
                        Icons.clear_rounded,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: FilledButton(
                    onPressed: _onSave,
                    child:
                        Text(S.of(context).menu_offer_combo_slot_product_card_save.toUpperCase()),
                  ),
                ),
              ],
            )
          : SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: widget.onCancel,
                style: FilledButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  foregroundColor: Theme.of(context).colorScheme.onBackground,
                ),
                child: Text(S.of(context).menu_offer_combo_slot_product_card_cancel.toUpperCase()),
              ),
            ),
    );

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Expanded(
            child: content,
          ),
          bottomButtons,
        ],
      ),
    );
  }

  void _onToppingSelected(Topping topping) {
    setState(() {
      _selectedToppings.add(topping);
    });
  }

  void _onToppingUnselected(Topping topping) {
    setState(() {
      _selectedToppings.remove(topping);
    });
  }

  void _onIngredientSelected(bool select, Ingredient ingredient) {
    setState(() {
      if (select) {
        _removedIngredients.remove(ingredient);
      } else {
        _removedIngredients.add(ingredient);
      }
    });
  }

  void _onSave() {
    widget.onSave(_selectedToppings, _removedIngredients);
  }
}
