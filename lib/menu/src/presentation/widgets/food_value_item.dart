import 'package:dodo_pizza/app/app_colors.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../models/food_value.dart';

class FoodValueItem extends StatelessWidget {
  const FoodValueItem({
    super.key,
    required this.productName,
    required this.foodValue,
  });

  final String productName;
  final FoodValue foodValue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.extension<AppColors>()!;
    final titleStyle = theme.textTheme.titleSmall!.copyWith(
      color: colors.textPrimaryInverse,
    );
    final captionStyle = theme.textTheme.bodySmall!.copyWith(
      color: colors.textSecondaryInverse,
    );
    final itemStyle = theme.textTheme.labelMedium!.copyWith(
      color: colors.textPrimaryInverse,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          productName,
          style: titleStyle,
        ),
        const SizedBox(height: 8),
        Text(
          S.of(context).menu_food_value_nutrition_facts,
          style: captionStyle,
        ),
        const SizedBox(height: 8),
        _Item(
          label: S.of(context).menu_food_value_calories,
          value: S.of(context).menu_food_value_kcal_value(foodValue.kilocalories),
          textStyle: itemStyle,
        ),
        const SizedBox(height: 8),
        _Item(
          label: S.of(context).menu_food_value_proteins,
          value: S.of(context).menu_food_value_grams_value(foodValue.proteins),
          textStyle: itemStyle,
        ),
        const SizedBox(height: 8),
        _Item(
          label: S.of(context).menu_food_value_fats,
          value: S.of(context).menu_food_value_grams_value(foodValue.fats),
          textStyle: itemStyle,
        ),
        const SizedBox(height: 8),
        _Item(
          label: S.of(context).menu_food_value_carbohydrates,
          value: S.of(context).menu_food_value_grams_value(foodValue.carbohydrates),
          textStyle: itemStyle,
        ),
        if (foodValue.weight.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: _Item(
              label: S.of(context).menu_food_value_weight,
              value: S.of(context).menu_food_value_grams_value(foodValue.weight),
              textStyle: itemStyle,
            ),
          ),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('productName', productName));
    properties.add(DiagnosticsProperty<FoodValue>('foodValue', foodValue));
  }
}

class _Item extends StatelessWidget {
  const _Item({
    super.key,
    required this.label,
    required this.value,
    required this.textStyle,
  });

  final String label;
  final String value;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: textStyle,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          value,
          style: textStyle,
        ),
      ],
    );
  }
}
