import 'package:dodo_pizza/app/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/ingredient.dart';
import '../../models/topping.dart';

class IngredientsDescription extends StatelessWidget {
  const IngredientsDescription({
    super.key,
    required this.ingredients,
    required this.removedIngredients,
    this.selectedToppings = const {},
    this.textAlign,
    this.style,
  });

  final Set<Ingredient> ingredients;
  final Set<Ingredient> removedIngredients;
  final Set<Topping> selectedToppings;
  final TextStyle? style;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle;
    if (style != null) {
      textStyle = style!;
    } else {
      final secondaryTextColor = Theme.of(context).extension<AppColors>()!.textSecondary;
      textStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: secondaryTextColor,
          );
    }

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
      textAlign: textAlign,
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

    if (selectedToppings.isNotEmpty) {
      inlineSpans.add(const TextSpan(text: ', '));
      inlineSpans.add(
        TextSpan(
          text: selectedToppings //
              .map<String>((e) => '+${e.name.toLowerCase()}')
              .join(', '),
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
    properties.add(IterableProperty<Topping>('selectedToppings', selectedToppings));
    style?.debugFillProperties(properties);
    properties.add(EnumProperty<TextAlign>('textAlign', textAlign));
  }
}
