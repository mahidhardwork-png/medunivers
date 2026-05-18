import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'typography.dart';

class AppTheme {
  static final light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.teal600, brightness: Brightness.light),
    scaffoldBackgroundColor: AppColors.slate50,
    textTheme: AppTypography.textTheme(Colors.black87),
    cardTheme: const CardThemeData(elevation: 0.8),
  );
  static final dark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.teal500, brightness: Brightness.dark),
    scaffoldBackgroundColor: AppColors.navy950,
    textTheme: AppTypography.textTheme(Colors.white),
    cardColor: AppColors.navy900,
  );
}
