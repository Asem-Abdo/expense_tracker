import 'package:flutter/material.dart';

final class DarkTheme {
  static final ColorScheme darkColor = ColorScheme.fromSeed(
    seedColor: const Color(0xFF1B5E20),
    brightness: Brightness.dark,
  );

  static final ThemeData theme = ThemeData(
    colorScheme: darkColor,
    appBarTheme: AppBarTheme(
      backgroundColor: darkColor.primaryContainer.withValues(alpha: 0.2),
      elevation: 0,
    ),
    scaffoldBackgroundColor: const Color(0xFF121212),
    cardTheme: const CardThemeData().copyWith(
      color: darkColor.secondaryContainer.withValues(alpha: 0.25),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      shadowColor: darkColor.primary.withValues(alpha: 0.2),
      elevation: 3,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkColor.primary,
        foregroundColor: darkColor.onPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    textTheme: ThemeData.dark().textTheme.copyWith(
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: darkColor.onSurface,
        fontSize: 18,
      ),
      bodyMedium: TextStyle(
        color: darkColor.onSurface.withValues(alpha: 0.85),
        fontSize: 14,
      ),
    ),
  );
}
