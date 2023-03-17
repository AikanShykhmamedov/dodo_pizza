import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../models/topping.dart';
import 'topping_card.dart';

class ToppingsGrid extends StatelessWidget {
  const ToppingsGrid({
    super.key,
    required this.toppings,
    required this.selectedToppings,
    required this.onToppingSelected,
    required this.onToppingUnselected,
    this.crossAxisCount = 3,
    this.mainAxisSpacing = 8.0,
    this.crossAxisSpacing = 8.0,
    this.mainAxisExtent = 164.0,
  });

  final Set<Topping> toppings;
  final Set<Topping> selectedToppings;
  final void Function(Topping) onToppingSelected;
  final void Function(Topping) onToppingUnselected;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      children: toppings.map<Widget>((topping) {
        final isSelected = selectedToppings.contains(topping);
        final onToppingPressed = isSelected ? onToppingUnselected : onToppingSelected;

        return ToppingCard(
          topping: topping,
          isSelected: isSelected,
          onPressed: () => onToppingPressed(topping),
        );
      }).toList(),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<Topping>('toppings', toppings));
    properties.add(IterableProperty<Topping>('selectedToppings', selectedToppings));
    properties.add(DiagnosticsProperty<Function>('onToppingSelected', onToppingSelected));
    properties.add(DiagnosticsProperty<Function>('onToppingUnselected', onToppingUnselected));
    properties.add(IntProperty('crossAxisCount', crossAxisCount));
    properties.add(DoubleProperty('mainAxisSpacing', mainAxisSpacing));
    properties.add(DoubleProperty('crossAxisSpacing', crossAxisSpacing));
    properties.add(DoubleProperty('mainAxisExtent', mainAxisExtent));
  }
}
