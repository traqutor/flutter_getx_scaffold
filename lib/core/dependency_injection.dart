import 'package:logger/logger.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Import controllers
import 'package:can_immo/features/settings/settings_controller.dart';

/// Manages dependency injection throughout the app
class DependencyInjection {
  /// Initialize all dependencies
  static Future<void> init() async {
    // Persistent services
    final sharedPreferences = await SharedPreferences.getInstance();
    Get.put(sharedPreferences, permanent: true);

    // Controllers - Non-persistent dependencies
    Get.lazyPut<SettingsController>(() => SettingsController(), fenix: true);

    // Additional injectable dependencies
    final loggerService = LoggerService();
    Get.put(loggerService, permanent: true);
  }

  static void dispose() {
    // Clean-up logic here if needed
  }
}

class LoggerService {
  var logger = Logger(printer: PrettyPrinter());

  void d(String message) {
    logger.d('[D] $message');
  }

  void i(String message) {
    logger.i('[I] $message');
  }

  void w(String message) {
    logger.w('[W] $message');
  }

  void error(String message) {
    logger.e('[ERROR] $message');
  }

  void demo() {
    d('Demo Log message');
    i('Demo Info message');
    w('Demo Warning!');
    error('Demo something bad happened');
  }
}
