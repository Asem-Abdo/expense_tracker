import 'package:flutter/material.dart';

final class LightTheme {
  static final ColorScheme lightColor = ColorScheme.fromSeed(
    seedColor: const Color(0xFF1976D2),
  );

  static final ThemeData theme = ThemeData(
    colorScheme: lightColor,
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: lightColor.onPrimaryContainer,
      foregroundColor: lightColor.primaryContainer,
    ),
    cardTheme: const CardThemeData().copyWith(
      color: lightColor.secondaryContainer,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightColor.primaryContainer,
      ),
    ),
    textTheme: ThemeData().textTheme.copyWith(
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: lightColor.onSecondaryContainer,
        fontSize: 16,
      ),
    ),
  );
}
