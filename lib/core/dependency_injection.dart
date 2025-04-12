import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Import controllers
import 'package:flutter_getx_scaffold/modules/home/home_controller.dart';
import 'package:flutter_getx_scaffold/modules/settings/settings_controller.dart';

/// Manages dependency injection throughout the app
class DependencyInjection {
  /// Initialize all dependencies
  static Future<void> init() async {
    // Services - Persistent Dependencies
    final sharedPreferences = await SharedPreferences.getInstance();
    Get.put(sharedPreferences, permanent: true);

    // Controllers - Non-persistent dependencies
    Get.lazyPut<SettingsController>(() => SettingsController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);

    // Additional controllers and services will be added here
  }

  /// Dispose of all dependencies that need explicit cleanup
  static void dispose() {
    // Clean up any resources if needed
  }
}
