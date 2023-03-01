import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../models/product_bundle.dart';

class PricesTable extends StatelessWidget {
  const PricesTable({
    super.key,
    required this.comboBundle,
  });

  final ComboBundle comboBundle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(comboBundle.product.name),
            ),
            const SizedBox(width: 8),
            Text(S.of(context).preformatPrice(comboBundle.basePrice, (s) => s.price_count)),
          ],
        ),
        const SizedBox(height: 4),
        for (final productBundle in comboBundle.slotProductBundles.values)
          if (productBundle.price > 0)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(productBundle.product.name),
                  ),
                  const SizedBox(width: 8),
                  Text(S
                      .of(context)
                      .preformatPrice(productBundle.price, (s) => s.extra_price_count)),
                ],
              ),
            ),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<ComboBundle>('comboBundle', comboBundle));
  }
}
