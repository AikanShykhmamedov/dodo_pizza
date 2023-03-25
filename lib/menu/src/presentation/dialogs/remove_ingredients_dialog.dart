import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/ingredient.dart';

class RemoveIngredientsDialog extends StatefulWidget {
  const RemoveIngredientsDialog({
    super.key,
    required this.ingredients,
    required this.removedIngredients,
  });

  final Set<Ingredient> ingredients;
  final Set<Ingredient> removedIngredients;

  @override
  State<RemoveIngredientsDialog> createState() => _RemoveIngredientsDialogState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<Ingredient>('ingredients', ingredients));
    properties.add(IterableProperty<Ingredient>('removedIngredients', removedIngredients));
  }
}

class _RemoveIngredientsDialogState extends State<RemoveIngredientsDialog> {
  late final Set<Ingredient> _removedIngredients;

  @override
  void initState() {
    super.initState();
    _removedIngredients = Set.from(widget.removedIngredients);
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.75,
      child: Dialog(
        insetPadding: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).menuOfferRemoveIngredients,
                style: Theme.of(context).textTheme.titleLarge!,
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                children: [
                  for (final ingredient in widget.ingredients)
                    ChoiceChip(
                      label: Text(toBeginningOfSentenceCase(ingredient.name)!),
                      onSelected: (select) => _onSelected(select, ingredient),
                      selected: !_removedIngredients.contains(ingredient),
                      pressElevation: 4.0,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                    ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: _removedIngredients.isNotEmpty ? _onResetPressed : null,
                    child: Text(S.of(context).menuOfferRemoveIngredientsDialogReset.toUpperCase()),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: _onDonePressed,
                    child: Text(S.of(context).menuOfferRemoveIngredientsDialogDone.toUpperCase()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSelected(bool select, Ingredient ingredient) {
    setState(() {
      if (select) {
        _removedIngredients.remove(ingredient);
      } else {
        _removedIngredients.add(ingredient);
      }
    });
  }

  void _onResetPressed() {
    setState(() {
      _removedIngredients.clear();
    });
  }

  void _onDonePressed() {
    Navigator.pop<Set<Ingredient>>(context, _removedIngredients);
  }
}

Future<Set<Ingredient>?> showRemoveIngredientsDialog({
  required BuildContext context,
  required Set<Ingredient> ingredients,
  required Set<Ingredient> removedIngredients,
}) {
  return showDialog<Set<Ingredient>>(
    context: context,
    builder: (context) => RemoveIngredientsDialog(
      ingredients: ingredients,
      removedIngredients: removedIngredients,
    ),
  );
}
