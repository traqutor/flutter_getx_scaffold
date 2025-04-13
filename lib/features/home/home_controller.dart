
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isEmitting = false.obs;

  void startEmitting() => isEmitting.value = true;
  void stopEmitting() => isEmitting.value = false;
  void toggleEmitting() => isEmitting.toggle();
}
