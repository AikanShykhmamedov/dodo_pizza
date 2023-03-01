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
                  S.of(context).preformatPrice(price, (s) => s.price_count),
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
                const SizedBox(height: 4),
                CrossedText(
                  S.of(context).preformatPrice(fullPrice!, (s) => s.price_count),
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
              ],
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Text(S.of(context).menu_offer_add_basket.toUpperCase()),
            ),
          ),
        ],
      );
    } else {
      child = TextButton(
        onPressed: () {},
        child: Text(S
            .of(context)
            .preformatPrice(price, (s) => s.menu_offer_add_basket_for_count)
            .toUpperCase()),
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
      child: child,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<num>('price', price));
    properties.add(DiagnosticsProperty<num>('fullPrice', fullPrice));
  }
}
