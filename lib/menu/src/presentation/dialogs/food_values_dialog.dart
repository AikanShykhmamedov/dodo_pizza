import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../models/food_value.dart';
import '../widgets/food_value_item.dart';

enum FoodValueDialogAlignment {
  rightCenter,
  topRight,
}

class FoodValuesDialog extends StatelessWidget {
  const FoodValuesDialog({
    super.key,
    required this.animation,
    required this.anchor,
    required this.alignment,
    required this.padding,
    required this.foodValuesByName,
  });

  final Animation<double> animation;
  final Offset anchor;
  final FoodValueDialogAlignment alignment;
  final EdgeInsets padding;
  final Map<String, FoodValue> foodValuesByName;

  @override
  Widget build(BuildContext context) {
    final displayPadding = MediaQuery.of(context).padding;
    final size = MediaQuery.of(context).size;
    final entries = foodValuesByName.entries.toList();

    return Stack(
      children: [
        CustomSingleChildLayout(
          delegate: _FoodValuesDialogLayoutDelegate(
            displayPadding: displayPadding,
            padding: padding,
            anchor: anchor,
            alignment: alignment,
          ),
          child: ScaleTransition(
            scale: Tween<double>(
              begin: 0.5,
              end: 1.0,
            ).animate(animation),
            child: SizedBox(
              width: size.width * 0.75 - padding.horizontal,
              child: Material(
                color: Theme.of(context).colorScheme.inverseSurface,
                borderRadius: BorderRadius.circular(4),
                child: ListView.separated(
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.all(16),
                  shrinkWrap: true,
                  itemCount: entries.length,
                  separatorBuilder: (_, __) => const Divider(
                    color: Colors.white30,
                    height: 16,
                  ),
                  itemBuilder: (context, index) {
                    final name = entries[index].key;
                    final foodValue = entries[index].value;

                    return FoodValueItem(
                      productName: name,
                      foodValue: foodValue,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Offset>('anchor', anchor));
    properties.add(EnumProperty<FoodValueDialogAlignment>('alignment', alignment));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>('padding', padding));
    properties.add(IterableProperty<MapEntry<String, FoodValue>>(
        'foodValuesByName', foodValuesByName.entries));
  }
}

class _FoodValuesDialogLayoutDelegate extends SingleChildLayoutDelegate {
  const _FoodValuesDialogLayoutDelegate({
    required this.displayPadding,
    required this.padding,
    required this.anchor,
    required this.alignment,
  });

  final EdgeInsets displayPadding;
  final EdgeInsets padding;
  final Offset anchor;
  final FoodValueDialogAlignment alignment;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return constraints.copyWith(
      maxHeight: constraints.maxHeight - displayPadding.vertical - padding.vertical,
    );
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    switch (alignment) {
      case FoodValueDialogAlignment.rightCenter:
        final dx = anchor.dx - childSize.width - padding.right;
        final dy = max(displayPadding.top + padding.top, anchor.dy - childSize.height / 2);

        return Offset(dx, dy);
      case FoodValueDialogAlignment.topRight:
        final dx = anchor.dx - childSize.width;
        final dy = max(displayPadding.top + padding.top, anchor.dy + padding.top);

        return Offset(dx, dy);
    }
  }

  @override
  bool shouldRelayout(covariant _FoodValuesDialogLayoutDelegate oldDelegate) {
    return displayPadding != oldDelegate.displayPadding ||
        padding != oldDelegate.padding ||
        anchor != oldDelegate.anchor ||
        alignment != oldDelegate.alignment;
  }
}

Future<void> showFoodValuesDialog({
  required BuildContext context,
  required Offset anchor,
  FoodValueDialogAlignment alignment = FoodValueDialogAlignment.rightCenter,
  EdgeInsets padding = const EdgeInsets.all(8),
  required Map<String, FoodValue> foodValuesByName,
}) {
  return showGeneralDialog(
    context: context,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierDismissible: true,
    barrierColor: Colors.transparent,
    pageBuilder: (context, animation, __) => FoodValuesDialog(
      animation: animation,
      anchor: anchor,
      alignment: alignment,
      padding: padding,
      foodValuesByName: foodValuesByName,
    ),
  );
}
