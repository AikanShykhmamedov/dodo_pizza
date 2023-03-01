import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/single_product_cubit.dart';
import '../../models/product_size.dart';
import 'menu_offer_content_base.dart';
import 'selector.dart';

class MenuOfferSingleProductContent extends StatelessWidget {
  const MenuOfferSingleProductContent({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<SingleProductCubit>();
    final bundle = cubit.state.bundle;
    final product = bundle.product;
    final sizes = cubit.state.sizes;

    return MenuOfferContentBase(
      imageUrl: product.imageUrl,
      name: product.name,
      details: product.size == null
          ? null
          : S.of(context).menu_offer_product_size(product.size!),
      description: product.description,
      products: [product],
      price: bundle.price,
      children: [
        const SizedBox(height: 16),
        if (sizes != null && sizes.length > 1)
          Selector<ProductSize>(
            items: [
              for (final size in sizes)
                SelectorItem(
                  value: size,
                  isSelected: product.size == size,
                  label: Text(
                    S.of(context).menu_offer_product_size(size),
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
            ],
            onSelected: cubit.setSize,
          ),
      ],
    );
  }
}
