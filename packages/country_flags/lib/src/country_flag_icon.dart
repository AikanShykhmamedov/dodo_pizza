import 'package:flutter/material.dart';

class CountryFlagIcon extends StatelessWidget {
  const CountryFlagIcon({
    super.key,
    required this.isoName,
    this.size = 24,
  });

  final String isoName;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'flags/ic_flag_${isoName.toLowerCase()}.png',
      package: 'country_flags',
      width: size,
      height: size,
    );
  }
}
