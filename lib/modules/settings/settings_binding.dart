import 'package:flutter_getx_scaffold/modules/settings/settings_controller.dart';
import 'package:get/get.dart';

/// Binding for the Settings feature
/// This ensures the SettingsController is available when needed
class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    // Check if controller is already registered before registering again
    if (!Get.isRegistered<SettingsController>()) {
      Get.put(SettingsController());
    }
  }
}
