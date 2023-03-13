import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/single_product_cubit.dart';
import '../../models/product_bundle.dart';
import '../../models/product_size.dart';
import 'combo_slot_product_card_base.dart';
import 'selector.dart';

class ComboSlotSingleProductCard extends StatelessWidget {
  const ComboSlotSingleProductCard({
    super.key,
    required this.selectedBundle,
    required this.onSelect,
  });

  final SingleProductBundle? selectedBundle;
  final void Function(SingleProductBundle) onSelect;

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<SingleProductCubit>();
    final bundle = cubit.state.bundle;
    final product = bundle.product;
    final sizes = cubit.state.sizes;

    return ComboSlotProductCardBase(
      imageUrl: product.imageUrl,
      name: product.name,
      details: product.size == null ? null : S.of(context).menu_offer_product_size(product.size!),
      description: product.description,
      price: bundle.price,
      products: [product],
      isGroupSelected: selectedBundle != null,
      isProductSelected: selectedBundle?.product == product,
      isBundleChanged: false,
      onSelect: () => onSelect(bundle),
      children: [
        const Spacer(),
        if (sizes != null && sizes.length > 1)
          SizedBox(
            height: 44,
            child: Selector<ProductSize>(
              items: [
                for (final size in sizes)
                  SelectorItem(
                    value: size,
                    isSelected: product.size == size,
                    label: Text(
                      S.of(context).menu_offer_product_size(size),
                      style: Theme.of(context).textTheme.labelSmall!,
                    ),
                  ),
              ],
              onSelected: cubit.setSize,
            ),
          ),
        const SizedBox(height: 16),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<SingleProductBundle?>('selectedBundle', selectedBundle));
    properties.add(DiagnosticsProperty<Function>('onSelect', onSelect));
  }
}
