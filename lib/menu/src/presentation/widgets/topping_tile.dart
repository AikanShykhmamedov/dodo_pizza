import 'package:cached_network_image/cached_network_image.dart';
import 'package:dodo_pizza/app/app_assets.dart';
import 'package:dodo_pizza/app/app_colors.dart';
import 'package:dodo_pizza/app/app_constants.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/topping.dart';

class ToppingTile extends StatelessWidget {
  const ToppingTile({
    super.key,
    required this.onPressed,
    required this.topping,
    required this.isSelected,
  });

  final VoidCallback onPressed;
  final Topping topping;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final content = Row(
      children: [
        CachedNetworkImage(
          imageUrl: topping.imageUrl,
          width: 48,
          height: 48,
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
                topping.name,
                style: Theme.of(context).textTheme.bodyMedium!,
              ),
              const SizedBox(height: 4),
              Text(
                S.of(context).preformatPrice(topping.price, (s) => s.extra_price_count),
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).extension<AppColors>()!.textSecondary,
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 24),
      ],
    );

    return AnimatedScale(
      scale: isSelected ? 0.975 : 1.0,
      duration: AppAnimationDurations.standard,
      child: Material(
        type: MaterialType.card,
        elevation: isSelected ? 0 : 4,
        color: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(
          side: isSelected
              ? BorderSide(
                  color: Theme.of(context).colorScheme.primary,
                  width: 2,
                )
              : BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onPressed,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: content,
              ),
              if (isSelected)
                Positioned(
                  top: 8,
                  right: 8,
                  child: Icon(
                    Icons.check_circle_outline_rounded,
                    color: Theme.of(context).colorScheme.primary,
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
    properties.add(DiagnosticsProperty<Function>('onPressed', onPressed));
    properties.add(DiagnosticsProperty<Topping>('topping', topping));
    properties.add(DiagnosticsProperty<bool>('isSelected', isSelected));
  }
}
