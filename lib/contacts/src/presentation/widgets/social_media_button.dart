import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
    required this.onPressed,
    required this.assetName,
  });

  final VoidCallback onPressed;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onPressed,
      radius: 64,
      child: SvgPicture.asset(
        assetName,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Function>('onPressed', onPressed));
    properties.add(StringProperty('assetName', assetName));
  }
}
