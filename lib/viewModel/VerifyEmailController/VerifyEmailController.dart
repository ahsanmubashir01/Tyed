import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class VerifyEmailController extends GetxController {
  RxString textfield1 = "".obs;
  RxString textfield2 = "".obs;
  RxString textfield3 = "".obs;
  RxString textfield4 = "".obs;

  void VerifyEmailchanged(String value) {
    textfield1.value = value;
    textfield2.value = value;
    textfield3.value = value;
    textfield4.value = value;
  }
}
