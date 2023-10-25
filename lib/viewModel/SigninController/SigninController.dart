import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SigninController extends GetxController {
  RxString email = "".obs;
  RxString password = "".obs;
  RxString securitycode = "".obs;

  void emailchanged(String value) {
    email.value = value;
  }

  void passwordchanged(String value) {
    password.value = value;
  }

  void securitycodechanged(String value) {
    securitycode.value = value;
  }
}
