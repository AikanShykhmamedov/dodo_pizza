import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.textPrimary,
    required this.textSecondary,
    required this.textPrimaryInverse,
    required this.textSecondaryInverse,
  });

  final Color textPrimary;
  final Color textSecondary;
  final Color textPrimaryInverse;
  final Color textSecondaryInverse;

  @override
  ThemeExtension<AppColors> copyWith({
    Color? textPrimary,
    Color? textSecondary,
    Color? textPrimaryInverse,
    Color? textSecondaryInverse,
  }) {
    return AppColors(
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textPrimaryInverse: textPrimaryInverse ?? this.textPrimaryInverse,
      textSecondaryInverse: textSecondaryInverse ?? this.textSecondaryInverse,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }

    return AppColors(
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textPrimaryInverse: Color.lerp(textPrimaryInverse, other.textPrimaryInverse, t)!,
      textSecondaryInverse: Color.lerp(textSecondaryInverse, other.textSecondaryInverse, t)!,
    );
  }
}
