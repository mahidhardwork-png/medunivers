import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static TextTheme textTheme(Color color) => GoogleFonts.interTextTheme().copyWith(
        displaySmall: TextStyle(fontWeight: FontWeight.w700, color: color),
        titleLarge: TextStyle(fontWeight: FontWeight.w700, color: color),
        titleMedium: TextStyle(fontWeight: FontWeight.w600, color: color),
        bodyMedium: TextStyle(fontWeight: FontWeight.w400, color: color),
      );
}
