import 'package:flutter/material.dart';
import 'package:refily/core/theme/app_colors.dart';
import 'package:refily/core/theme/app_text_theme.dart';

abstract final class TAppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: TAppColors.lightBackground,
      colorScheme: const ColorScheme.light(
        primary: TAppColors.lightPrimary,
        surface: TAppColors.lightSurface,
      ),

      textTheme: TAppTypography.lightTextTheme(TAppTypography.textTheme),
      appBarTheme: const AppBarTheme(
        backgroundColor: TAppColors.lightSurface,
        elevation: 0,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: TAppColors.darkBackground,
      colorScheme: const ColorScheme.dark(
        primary: TAppColors.darkPrimary,
        surface: TAppColors.darkSurface,
      ),

      textTheme: TAppTypography.darkTextTheme(TAppTypography.textTheme),
      appBarTheme: const AppBarTheme(
        backgroundColor: TAppColors.darkSurface,
        elevation: 0,
      ),
    );
  }
}
