import 'package:logger/logger.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Import controllers
import 'package:can_immo/features/home/home_controller.dart';
import 'package:can_immo/features/settings/settings_controller.dart';

/// Manages dependency injection throughout the app
class DependencyInjection {
  /// Initialize all dependencies
  static Future<void> init() async {
    // Services - Persistent Dependencies
    final sharedPreferences = await SharedPreferences.getInstance();
    Get.put(sharedPreferences, permanent: true);

    final loggerService = LoggerService();
    Get.put(loggerService, permanent: true);

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

class LoggerService {
  var logger = Logger(printer: PrettyPrinter());

  var loggerNoStack = Logger(printer: PrettyPrinter(methodCount: 0));

  void demo() {
    logger.d('Log message with 2 methods');

    loggerNoStack.i('Info message');

    loggerNoStack.w('Just a warning!');

    logger.e('Error! Something bad happened', error: 'Test Error');

    loggerNoStack.t({'key': 5, 'value': 'something'});

    Logger(printer: SimplePrinter(colors: true)).t('boom');
  }

  void debug(String message) {
    logger.d('[DEBUG] $message');
  }

  void info(String message) {
    logger.i('[INFO] $message');
  }

  void warning(String message) {
    logger.w('[WARNING] $message');
  }

  void error(String message, [dynamic error]) {
    logger.e('[ERROR] $message');
  }
}
