import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


/// A service that stores and retrieves user settings.

class SettingsService {
  static const String _themeKey = 'theme_mode';

  Future<ThemeMode> themeMode() async => ThemeMode.system;

  Future<void> updateThemeMode(ThemeMode theme) async {
    final prefs = await SharedPreferences.getInstance();
    final themeIndex = theme.index; // 0: system, 1: light, 2: dark
    await prefs.setInt(_themeKey, themeIndex);
  }

  Future<ThemeMode> getThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final themeIndex = prefs.getInt(_themeKey) ?? ThemeMode.system.index;
    return ThemeMode.values[themeIndex];
  }
}
