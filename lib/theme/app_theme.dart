import 'package:flutter/material.dart';

/// Provides app-wide theme configuration
class AppTheme {
  AppTheme._();
  
  // Colors
  static final Color _lightPrimaryColor = Colors.blue.shade800;
  static final Color _lightSecondaryColor = Colors.blue.shade600;
  static const Color _lightOnPrimaryColor = Colors.white;
  
  static const Color _darkPrimaryColor = Color(0xFF1F1F1F);
  static final Color _darkSecondaryColor = Colors.blue.shade700;
  static const Color _darkOnPrimaryColor = Colors.white;

  // Light theme
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: _lightPrimaryColor,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      secondary: _lightSecondaryColor,
      onPrimary: _lightOnPrimaryColor,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      displaySmall: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
      titleLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
      bodyLarge: TextStyle(fontSize: 16.0),
      bodyMedium: TextStyle(fontSize: 14.0),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _lightPrimaryColor,
        foregroundColor: _lightOnPrimaryColor,
        textStyle: const TextStyle(fontSize: 16.0),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );

  // Dark theme
  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: _darkPrimaryColor,
    scaffoldBackgroundColor: const Color(0xFF121212),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: _darkPrimaryColor,
      foregroundColor: _darkOnPrimaryColor,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.dark(
      primary: _darkPrimaryColor,
      secondary: _darkSecondaryColor,
      onPrimary: _darkOnPrimaryColor,
      background: const Color(0xFF121212),
      surface: const Color(0xFF1E1E1E),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
      displayMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
      displaySmall: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
      headlineMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
      titleLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
      bodyLarge: TextStyle(fontSize: 16.0, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 14.0, color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _darkSecondaryColor,
        foregroundColor: _darkOnPrimaryColor,
        textStyle: const TextStyle(fontSize: 16.0),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}