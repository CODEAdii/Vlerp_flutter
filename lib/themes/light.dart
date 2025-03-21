import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue.shade600,
    foregroundColor: Colors.white,
    elevation: 0,
    toolbarHeight: 100,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue.shade600,
      foregroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  ),

  colorScheme: ColorScheme.light(
    primary: Colors.blue.shade600,
    onPrimary: Colors.white,
  ),
);
