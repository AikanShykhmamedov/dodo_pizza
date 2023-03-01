import 'package:cached_network_image/cached_network_image.dart';
import 'package:dodo_pizza/app/app_assets.dart';
import 'package:dodo_pizza/app/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/food_value.dart';
import '../../models/product.dart';
import '../dialogs/food_values_dialog.dart';
import 'add_to_basket_bar.dart';

class MenuOfferContentBase extends StatelessWidget {
  const MenuOfferContentBase({
    super.key,
    required this.imageUrl,
    required this.name,
    this.details,
    this.description,
    required this.products,
    required this.price,
    this.fullPrice,
    required this.children,
  });

  final String imageUrl;
  final String name;
  final String? details;
  final String? description;
  final Iterable<SingleProduct> products;
  final num price;
  final num? fullPrice;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              CachedNetworkImage(
                imageUrl: imageUrl,
                width: 344,
                height: 344,
                errorWidget: (_, __, ___) => SvgPicture.asset(AppAssets.productPlaceholder),
                placeholder: (_, __) => SvgPicture.asset(AppAssets.productPlaceholder),
                fadeInDuration: Duration.zero,
                fadeOutDuration: Duration.zero,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      name,
                      style: Theme.of(context).textTheme.headlineMedium!,
                    ),
                  ),
                  if (products.any((e) => e.foodValue != null))
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Builder(
                        builder: (context) => GestureDetector(
                          onTap: () => _onFoodValuePressed(context),
                          child: const Icon(Icons.info_outline_rounded),
                        ),
                      ),
                    )
                ],
              ),
              if (details != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    details!,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: theme.extension<AppColors>()!.textSecondary,
                    ),
                  ),
                ),
              if (description != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    description!,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.extension<AppColors>()!.textSecondary,
                    ),
                  ),
                ),
              ...children,
            ],
          ),
        ),
        AddToBasketBar(
          price: price,
          fullPrice: fullPrice,
        ),
      ],
    );
  }

  void _onFoodValuePressed(BuildContext context) {
    final iconRenderObject = context.findRenderObject() as RenderBox;
    final iconSize = iconRenderObject.size;
    final anchor = iconRenderObject.localToGlobal(iconSize.centerLeft(Offset.zero));
    final foodValuesByName = <String, FoodValue>{
      for (final product in products)
        if (product.foodValue != null) //
          product.name: product.foodValue!,
    };

    showFoodValuesDialog(
      context: context,
      anchor: anchor,
      foodValuesByName: foodValuesByName,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('imageUrl', imageUrl));
    properties.add(StringProperty('name', name));
    properties.add(StringProperty('details', details));
    properties.add(StringProperty('description', description));
    properties.add(IterableProperty<SingleProduct>('products', products));
    properties.add(DiagnosticsProperty<num>('price', price));
    properties.add(DiagnosticsProperty<num>('fullPrice', fullPrice));
  }
}
