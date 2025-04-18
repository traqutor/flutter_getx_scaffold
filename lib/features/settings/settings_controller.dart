import 'package:flutter/material.dart';
import 'package:can_immo/core/dependency_injection.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsController extends GetxController {
  final _prefs = Get.find<SharedPreferences>();
  final log = Get.find<LoggerService>();

  var isEmitting = false.obs;
  var themeMode = ThemeMode.system.obs;
  var language = 'en_US'.obs;
  var notificationsEnabled = true;
  var numberPairedDevices = 0.obs;

  static const String _themeModeKey = 'themeMode';
  static const String _languageKey = 'language';
  static const String _notificationsKey = 'notifications';

  @override
  void onInit() {
    super.onInit();
    loadSettings();
    log.demo();
  }

  void startEmitting() => isEmitting.value = true;

  void stopEmitting() => isEmitting.value = false;

  void toggleEmitting() => isEmitting.toggle();

  void setNumberPairedDevices(int no) => numberPairedDevices.value = no;

  void loadSettings() {
    final savedTheme = _prefs.getString(_themeModeKey);
    if (savedTheme != null) {
      themeMode.value = _parseTheme(savedTheme);
    }

    final savedLanguage = _prefs.getString(_languageKey);
    if (savedLanguage != null) {
      language.value = savedLanguage;
      updateLocale(language.value);
    }

    final savedNotifications = _prefs.getBool(_notificationsKey);
    if (savedNotifications != null) {
      notificationsEnabled = savedNotifications;
    }

    update(); // Notify GetBuilder
  }

  Future<void> updateThemeMode(ThemeMode mode) async {
    themeMode.value = mode;
    await _prefs.setString(_themeModeKey, _themeString(mode));
    Get.changeThemeMode(mode);
    update(); // Notify GetBuilder
  }

  Future<void> updateLanguage(String languageCode) async {
    language.value = languageCode;
    await _prefs.setString(_languageKey, languageCode);
    updateLocale(languageCode);
    update(); // Notify GetBuilder
  }

  void updateLocale(String code) {
    final parts = code.split('_');
    if (parts.length == 2) {
      Get.updateLocale(Locale(parts[0], parts[1]));
    }
  }

  Future<void> updateNotifications(bool enabled) async {
    notificationsEnabled = enabled;
    await _prefs.setBool(_notificationsKey, enabled);
    update(); // Notify GetBuilder
  }

  ThemeMode _parseTheme(String value) {
    switch (value) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  String _themeString(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return 'light';
      case ThemeMode.dark:
        return 'dark';
      default:
        return 'system';
    }
  }
}
