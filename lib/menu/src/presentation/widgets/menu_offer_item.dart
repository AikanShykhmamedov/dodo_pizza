import 'package:cached_network_image/cached_network_image.dart';
import 'package:dodo_pizza/app/app_assets.dart';
import 'package:dodo_pizza/app/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'crossed_text.dart';

class MenuOfferItem extends StatelessWidget {
  const MenuOfferItem({
    super.key,
    required this.onPressed,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.fullPrice,
    required this.onPricePressed,
    required this.isPromoted,
  });

  final VoidCallback onPressed;
  final String imageUrl;
  final String name;
  final String description;
  final String price;
  final String? fullPrice;
  final VoidCallback onPricePressed;
  final bool isPromoted;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: isPromoted
            ? _PromotionLayout(
                imageUrl: imageUrl,
                name: name,
                description: description,
                price: price,
                fullPrice: fullPrice,
                onPricePressed: onPricePressed,
              )
            : _TileLayout(
                imageUrl: imageUrl,
                name: name,
                description: description,
                price: price,
                fullPrice: fullPrice,
                onPricePressed: onPricePressed,
              ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Function>('onPressed', onPressed));
    properties.add(StringProperty('imageUrl', imageUrl));
    properties.add(StringProperty('name', name));
    properties.add(StringProperty('description', description));
    properties.add(StringProperty('price', price));
    properties.add(StringProperty('fullPrice', fullPrice));
    properties.add(DiagnosticsProperty<Function>('onPricePressed', onPricePressed));
    properties.add(DiagnosticsProperty<bool>('isPromoted', isPromoted));
  }
}

class _TileLayout extends StatelessWidget {
  const _TileLayout({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.fullPrice,
    required this.onPricePressed,
  });

  final String imageUrl;
  final String name;
  final String description;
  final String price;
  final String? fullPrice;
  final VoidCallback onPricePressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedNetworkImage(
          imageUrl: imageUrl,
          width: 136,
          height: 136,
          errorWidget: (_, __, ___) => SvgPicture.asset(AppAssets.productPlaceholder),
          placeholder: (_, __) => SvgPicture.asset(AppAssets.productPlaceholder),
          fadeInDuration: Duration.zero,
          fadeOutDuration: Duration.zero,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: theme.textTheme.bodyLarge!.copyWith(),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.extension<AppColors>()!.textSecondary,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  FilledButton.tonal(
                    onPressed: onPricePressed,
                    style: FilledButton.styleFrom(
                      minimumSize: const Size(96, 32),
                    ),
                    child: Text(price),
                  ),
                  if (fullPrice != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: CrossedText(
                        fullPrice!,
                        style: theme.textTheme.bodyMedium!,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PromotionLayout extends StatelessWidget {
  const _PromotionLayout({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.fullPrice,
    required this.onPricePressed,
  });

  final String imageUrl;
  final String name;
  final String description;
  final String price;
  final String? fullPrice;
  final VoidCallback onPricePressed;

  @override
  Widget build(BuildContext context) {
    const imageSize = 280.0;
    const placeholderSize = 168.0;

    final theme = Theme.of(context);

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: imageSize - placeholderSize - 8),
          child: Material(
            elevation: 1.5,
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: placeholderSize,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    name,
                    style: theme.textTheme.headlineMedium!,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.extension<AppColors>()!.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (fullPrice != null)
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: CrossedText(
                            fullPrice!,
                            style: theme.textTheme.bodyMedium!,
                          ),
                        ),
                      FilledButton.tonal(
                        onPressed: onPricePressed,
                        style: FilledButton.styleFrom(
                          minimumSize: const Size(96, 32),
                        ),
                        child: Text(price),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        CachedNetworkImage(
          imageUrl: imageUrl,
          width: imageSize,
          height: imageSize,
          errorWidget: (_, __, ___) => SvgPicture.asset(AppAssets.productPlaceholder),
          placeholder: (_, __) => SvgPicture.asset(AppAssets.productPlaceholder),
          fadeInDuration: Duration.zero,
          fadeOutDuration: Duration.zero,
        ),
      ],
    );
  }
}
