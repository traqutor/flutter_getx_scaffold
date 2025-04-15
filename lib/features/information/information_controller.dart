import 'package:can_immo/core/dependency_injection.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InformationController extends GetxController {
  final _prefs = Get.find<SharedPreferences>();
  final log = Get.find<LoggerService>();

  /// user data
  var isPinCode = false.obs;
  var pairPhonesNo = 0.obs;
  var pairTransmittersNo = 0.obs;
  var pairAllNo = 8.obs;

  /// advanced data
  var canBusNo = "".obs;
  var canBusDate = "".obs;
  var canBusDeviceType = "".obs;
  var canBusCpuSerialNo = "".obs;
  var bleDeviceProgramNo = "".obs;



  @override
  void onInit() {
    super.onInit();
    loadInformation();
  }

  void loadInformation() {
    log.d('Information view');
    // TODO implement real data update
    pairPhonesNo.value = 3;
    pairTransmittersNo.value = 1;
    pairAllNo.value = 4;

    canBusNo.value = "11188";
    canBusDate.value = "2025/02/13 01";
    canBusDeviceType.value = "335 77 A2";
    canBusCpuSerialNo.value = "006c00ac092030302D35325832424e";
    bleDeviceProgramNo.value = "2024/09/11 8e";


    update(); // Notify GetBuilder
  }
}
