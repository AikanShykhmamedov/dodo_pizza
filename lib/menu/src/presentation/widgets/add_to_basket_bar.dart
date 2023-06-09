import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'crossed_text.dart';

class AddToBasketBar extends StatelessWidget {
  const AddToBasketBar({
    super.key,
    required this.price,
    this.fullPrice,
  });

  final num price;
  final num? fullPrice;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (fullPrice != null) {
      child = Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).preformatPrice(price, (s) => s.priceCount),
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
                const SizedBox(height: 4),
                CrossedText(
                  S.of(context).preformatPrice(fullPrice!, (s) => s.priceCount),
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
              ],
            ),
          ),
          Expanded(
            child: FilledButton(
              onPressed: () {},
              child: Text(S.of(context).menuOfferAddBasket.toUpperCase()),
            ),
          ),
        ],
      );
    } else {
      child = FilledButton(
        onPressed: () {},
        child: Text(
          S.of(context).preformatPrice(price, (s) => s.menuOfferAddBasketForCount).toUpperCase(),
        ),
      );
    }

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            blurRadius: 4,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: SafeArea(
        child: child,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<num>('price', price));
    properties.add(DiagnosticsProperty<num>('fullPrice', fullPrice));
  }
}
