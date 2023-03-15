import 'package:dodo_pizza/app/app_colors.dart';
import 'package:flutter/material.dart';

final appTheme = ThemeData(
  extensions: const [_appColors],
  inputDecorationTheme: _inputDecorationTheme,
  splashFactory: InkRipple.splashFactory,
  colorScheme: _colorScheme,
  highlightColor: Colors.transparent,
  scaffoldBackgroundColor: _colorScheme.surface,
  appBarTheme: _appBarTheme,
  bottomNavigationBarTheme: _bottomNavigationBarTheme,
  chipTheme: _chipTheme,
  dividerTheme: _dividerTheme,
  listTileTheme: _listTileTheme,
  filledButtonTheme: _filledButtonTheme,
  textButtonTheme: _textButtonTheme,
  textTheme: _textTheme,
);

const _appColors = AppColors(
  textPrimary: Color(0xff000000),
  textSecondary: Color(0xff5d636f),
  textPrimaryInverse: Color(0xffffffff),
  textSecondaryInverse: Color(0xffe0e0e0),
);

const _inputDecorationTheme = InputDecorationTheme(
  hintStyle: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.05,
  ),
  contentPadding: EdgeInsets.symmetric(horizontal: 16),
  border: InputBorder.none,
);

const _colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xffff6801),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xfffdf1e6),
  onPrimaryContainer: Color(0xffc25f24),
  secondary: Colors.red,
  onSecondary: Colors.red,
  secondaryContainer: Color(0xfffdf1e6),
  onSecondaryContainer: Color(0xffc25f24),
  error: Colors.red,
  onError: Colors.white,
  background: Color(0xfff3f3f7),
  onBackground: Color(0xff5d636f),
  surface: Color(0xffffffff),
  onSurface: Color(0xff000000),
  inverseSurface: Color(0xDD000000),
  onInverseSurface: Color(0xffffffff),
  shadow: Color(0x61000000),
);

final _appBarTheme = AppBarTheme(
  backgroundColor: _colorScheme.surface,
  foregroundColor: _colorScheme.onSurface,
  elevation: 2,
  shadowColor: _colorScheme.shadow,
  centerTitle: false,
);

final _bottomNavigationBarTheme = BottomNavigationBarThemeData(
  backgroundColor: _colorScheme.surface,
  selectedItemColor: _colorScheme.onSurface,
  selectedLabelStyle: const TextStyle(
    fontSize: 12,
  ),
  type: BottomNavigationBarType.fixed,
);

final _chipTheme = ChipThemeData(
  elevation: 0.0,
  pressElevation: 0.0,
  shadowColor: _colorScheme.shadow,
  padding: const EdgeInsets.symmetric(horizontal: 8),
  backgroundColor: _colorScheme.background,
  selectedColor: _colorScheme.primaryContainer,
  labelStyle: TextStyle(
    color: _appColors.textSecondary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.1,
  ),
  secondaryLabelStyle: TextStyle(
    color: _colorScheme.onPrimaryContainer,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.1,
  ),
);

const _dividerTheme = DividerThemeData(
  space: 1,
  thickness: 1,
);

final _listTileTheme = ListTileThemeData(
  iconColor: _colorScheme.onSurface,
  tileColor: _colorScheme.surface,
);

final _filledButtonTheme = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    minimumSize: const Size.square(48),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ),
);

final _textButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    foregroundColor: _colorScheme.onPrimaryContainer,
    backgroundColor: Colors.transparent,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    minimumSize: const Size.square(40),
    shape: const StadiumBorder(),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ),
);

final _textTheme = TextTheme(
  headlineMedium: TextStyle(
    color: _appColors.textPrimary,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  ),
  titleLarge: TextStyle(
    color: _appColors.textPrimary,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.4,
  ),
  titleMedium: TextStyle(
    color: _appColors.textPrimary,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
  ),
  titleSmall: TextStyle(
    color: _appColors.textPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
    height: 1.25,
  ),
  bodyLarge: TextStyle(
    color: _appColors.textPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    height: 1.25,
  ),
  bodyMedium: TextStyle(
    color: _appColors.textPrimary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.1,
    height: 1.4,
  ),
  bodySmall: TextStyle(
    color: _appColors.textPrimary,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    height: 1.15,
  ),
  labelLarge: TextStyle(
    color: _appColors.textPrimary,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.3,
  ),
  labelMedium: TextStyle(
    color: _appColors.textPrimary,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.3,
  ),
  labelSmall: TextStyle(
    color: _appColors.textPrimary,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
  ),
);
