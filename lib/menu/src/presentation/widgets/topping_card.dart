import 'package:cached_network_image/cached_network_image.dart';
import 'package:dodo_pizza/app/app_assets.dart';
import 'package:dodo_pizza/app/app_constants.dart';
import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/topping.dart';

class ToppingCard extends StatelessWidget {
  const ToppingCard({
    super.key,
    required this.topping,
    required this.isSelected,
    required this.onPressed,
  });

  final Topping topping;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final content = Column(
      children: [
        CachedNetworkImage(
          imageUrl: topping.imageUrl,
          width: 88,
          height: 88,
          errorWidget: (_, __, ___) => SvgPicture.asset(AppAssets.productPlaceholder),
          placeholder: (_, __) => SvgPicture.asset(AppAssets.productPlaceholder),
        ),
        Expanded(
          child: Center(
            child: Text(
              topping.name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall!,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          S.of(context).preformatPrice(topping.price, (s) => s.priceCount),
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
            letterSpacing: 0.5,
          ),
        ),
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
            fit: StackFit.expand,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 8, 4, 16),
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
    properties.add(DiagnosticsProperty<Topping>('topping', topping));
    properties.add(DiagnosticsProperty<bool>('isSelected', isSelected));
    properties.add(DiagnosticsProperty<Function>('onPressed', onPressed));
  }
}
