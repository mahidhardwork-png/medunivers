import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'typography.dart';

class AppTheme {
  static final light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.brand, brightness: Brightness.light),
    scaffoldBackgroundColor: AppColors.bgLight,
    textTheme: AppTypography.textTheme(Colors.black87),
  );
  static final dark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.brandDark, brightness: Brightness.dark),
    scaffoldBackgroundColor: AppColors.bgDark,
    textTheme: AppTypography.textTheme(Colors.white),
  );
}
