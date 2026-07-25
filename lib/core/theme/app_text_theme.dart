import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:refily/core/theme/app_colors.dart';

abstract final class TAppTypography {
  static TextTheme get textTheme {
    return TextTheme(
      // Big Headings (e.g. Splash screen, Welcome titles)
      displayLarge: GoogleFonts.poppins(
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),

      // Screen Headers / AppBar Titles
      titleLarge: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.15,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),

      // Product Name, Section Titles
      bodyLarge: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.5,
      ),
      // Regular text (Descriptions, secondary info)
      bodyMedium: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.25,
      ),

      // Buttons Text
      labelLarge: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.25,
      ),
      // Small tags / Captions (e.g., Category Chips)
      labelMedium: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      ),
    );
  }

  static TextTheme lightTextTheme(TextTheme base) {
    return base.apply(
      displayColor: TAppColors.lightPrimary,
      bodyColor: TAppColors.lightText,
    );
  }

  static TextTheme darkTextTheme(TextTheme base) {
    return base.apply(
      displayColor: TAppColors.darkPrimary,
      bodyColor: TAppColors.darkText,
    );
  }
}
