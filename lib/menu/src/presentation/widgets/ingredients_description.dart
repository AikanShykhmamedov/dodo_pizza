import 'package:dodo_pizza/app/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/ingredient.dart';

class IngredientsDescription extends StatelessWidget {
  const IngredientsDescription({
    super.key,
    required this.ingredients,
    required this.removedIngredients,
  });

  final Set<Ingredient> ingredients;
  final Set<Ingredient> removedIngredients;

  @override
  Widget build(BuildContext context) {
    final secondaryTextColor = Theme.of(context).extension<AppColors>()!.textSecondary;
    final textStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: secondaryTextColor,
        );

    if (ingredients.isEmpty) {
      return Text(
        '',
        style: textStyle,
      );
    }

    return Text.rich(
      TextSpan(
        children: _getInlineSpans(),
      ),
      style: textStyle,
    );
  }

  List<InlineSpan> _getInlineSpans() {
    final inlineSpans = <InlineSpan>[];

    inlineSpans.add(
      TextSpan(
        text: toBeginningOfSentenceCase(ingredients.first.name),
        style: removedIngredients.contains(ingredients.first)
            ? const TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
    );

    for (final ingredient in ingredients.skip(1)) {
      inlineSpans.add(const TextSpan(text: ', '));
      inlineSpans.add(
        TextSpan(
          text: ingredient.name,
          style: removedIngredients.contains(ingredient)
              ? const TextStyle(decoration: TextDecoration.lineThrough)
              : null,
        ),
      );
    }

    return inlineSpans;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<Ingredient>('ingredients', ingredients));
    properties.add(IterableProperty<Ingredient>('removedIngredients', removedIngredients));
  }
}
