import 'package:cached_network_image/cached_network_image.dart';
import 'package:dodo_pizza/app/app_assets.dart';
import 'package:dodo_pizza/app/app_colors.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/ingredient.dart';
import '../../models/topping.dart';

class ComboSlotCard extends StatelessWidget {
  const ComboSlotCard({
    super.key,
    required this.onPressed,
    required this.imageUrl,
    required this.name,
    required this.details,
    required this.removedIngredients,
    required this.selectedToppings,
    required this.extraPrice,
  });

  final String imageUrl;
  final String name;
  final String? details;
  final Set<Ingredient> removedIngredients;
  final Set<Topping> selectedToppings;
  final num extraPrice;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.surface,
      elevation: 4,
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl: imageUrl,
                imageBuilder: (context, imageProvider) => Ink.image(
                  image: imageProvider,
                ),
                width: 136,
                height: 136,
                errorWidget: (_, __, ___) => SvgPicture.asset(AppAssets.productPlaceholder),
                placeholder: (_, __) => SvgPicture.asset(AppAssets.productPlaceholder),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(letterSpacing: 0.2),
                    ),
                    if (details != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          details!,
                          style: Theme.of(context).textTheme.bodySmall!,
                        ),
                      ),
                    if (removedIngredients.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          '- ${removedIngredients.map<String>((e) => e.name).join(', ')}',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                color: Theme.of(context).extension<AppColors>()!.textSecondary,
                              ),
                        ),
                      ),
                    if (selectedToppings.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          '+ ${selectedToppings.map<String>((e) => e.name).join(', ')}',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                color: Theme.of(context).extension<AppColors>()!.textSecondary,
                              ),
                        ),
                      ),
                    if (extraPrice > 0)
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          S.of(context).preformatPrice(extraPrice, (s) => s.extra_price_count),
                          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ),
                    const SizedBox(height: 12),
                    FilledButton.tonal(
                      onPressed: onPressed,
                      style: FilledButton.styleFrom(
                        minimumSize: const Size.square(32),
                      ),
                      child: Text(S.of(context).menu_offer_combo_slot_change),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('imageUrl', imageUrl));
    properties.add(StringProperty('name', name));
    properties.add(StringProperty('details', details));
    properties.add(IterableProperty<Ingredient>('removedIngredients', removedIngredients));
    properties.add(IterableProperty<Topping>('selectedToppings', selectedToppings));
    properties.add(DiagnosticsProperty<num>('extraPrice', extraPrice));
    properties.add(DiagnosticsProperty<Function>('onPressed', onPressed));
  }
}
