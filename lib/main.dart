import 'package:expense_tracker/theme/dark_theme.dart';
import 'package:expense_tracker/theme/light_theme.dart';
import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      themeMode: ThemeMode.system,
      home: const Expenses(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
