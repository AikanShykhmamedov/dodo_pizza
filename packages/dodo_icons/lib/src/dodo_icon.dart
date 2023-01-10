import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dodo_icons.dart';

class DodoIcon extends StatelessWidget {
  const DodoIcon({
    super.key,
    required this.icon,
    this.size = 24,
  });

  final DodoIcons icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'icons/${icon.filename}',
      package: 'dodo_icons',
      width: size,
      height: size,
    );
  }
}
