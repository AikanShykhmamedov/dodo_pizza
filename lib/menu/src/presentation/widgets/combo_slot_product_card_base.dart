import 'package:cached_network_image/cached_network_image.dart';
import 'package:dodo_pizza/app/app_assets.dart';
import 'package:dodo_pizza/app/app_colors.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/food_value.dart';
import '../../models/product.dart';
import '../dialogs/food_values_dialog.dart';

class ComboSlotProductCardBase extends StatelessWidget {
  ComboSlotProductCardBase({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.details,
    required this.description,
    required this.price,
    required this.products,
    required this.isGroupSelected,
    required this.isProductSelected,
    required this.isBundleChanged,
    required this.onSelect,
    required this.children,
  }) : areFoodValuesNotEmpty = products.any((e) => e.foodValue != null);

  final String imageUrl;
  final String name;
  final String? details;
  final String? description;
  final num price;
  final Iterable<SingleProduct> products;
  final bool areFoodValuesNotEmpty;
  final bool isGroupSelected;
  final bool isProductSelected;
  final bool isBundleChanged;
  final VoidCallback onSelect;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final Widget button;
    if (isGroupSelected) {
      if (isProductSelected && !isBundleChanged) {
        button = FilledButton.tonal(
          onPressed: onSelect,
          child: Text(S.of(context).menuOfferComboSlotProductCardSelected.toUpperCase()),
        );
      } else {
        button = FilledButton(
          onPressed: onSelect,
          child: Text(S.of(context).menuOfferComboSlotProductCardSave.toUpperCase()),
        );
      }
    } else {
      button = FilledButton(
        onPressed: onSelect,
        child: Text(S.of(context).menuOfferComboSlotProductCardAddDeal.toUpperCase()),
      );
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              children: [
                CachedNetworkImage(
                  imageUrl: imageUrl,
                  width: 232,
                  height: 232,
                  errorWidget: (_, __, ___) => SvgPicture.asset(AppAssets.productPlaceholder),
                  placeholder: (_, __) => SvgPicture.asset(AppAssets.productPlaceholder),
                ),
                const SizedBox(height: 16),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
                if (details != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      details!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).extension<AppColors>()!.textPrimary,
                          ),
                    ),
                  ),
                if (description != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      description!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).extension<AppColors>()!.textPrimary,
                          ),
                    ),
                  ),
                const SizedBox(height: 8),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: children,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    if (price != 0)
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text(
                          S.of(context).preformatPrice(price, (s) => s.extraPriceCount),
                          style: Theme.of(context).textTheme.titleMedium!,
                        ),
                      ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: button,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (areFoodValuesNotEmpty)
            Positioned(
              top: 16,
              right: 16,
              child: Builder(
                builder: (context) => GestureDetector(
                  onTap: () => _onFoodValuesPressed(context),
                  child: const Icon(
                    Icons.info_outline_rounded,
                    size: 28,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _onFoodValuesPressed(BuildContext context) {
    final iconRenderObject = context.findRenderObject()! as RenderBox;
    final iconSize = iconRenderObject.size;
    final anchor = iconRenderObject.localToGlobal(iconSize.bottomRight(Offset.zero));
    final foodValuesByName = <String, FoodValue>{
      for (final product in products)
        if (product.foodValue != null) //
          product.name: product.foodValue!,
    };

    showFoodValuesDialog(
      context: context,
      anchor: anchor,
      alignment: FoodValueDialogAlignment.topRight,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      foodValuesByName: foodValuesByName,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('imageUrl', imageUrl));
    properties.add(StringProperty('name', name));
    properties.add(DiagnosticsProperty<String?>('details', details));
    properties.add(DiagnosticsProperty<String?>('description', description));
    properties.add(DiagnosticsProperty<num>('price', price));
    properties.add(IterableProperty<SingleProduct>('products', products));
    properties.add(DiagnosticsProperty<bool>('areFoodValuesNotEmpty', areFoodValuesNotEmpty));
    properties.add(DiagnosticsProperty<bool>('isGroupSelected', isGroupSelected));
    properties.add(DiagnosticsProperty<bool>('isProductSelected', isProductSelected));
    properties.add(DiagnosticsProperty<bool>('isBundleChanged', isBundleChanged));
    properties.add(DiagnosticsProperty<Function>('onSelect', onSelect));
  }
}
