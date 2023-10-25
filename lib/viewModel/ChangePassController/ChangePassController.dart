import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ChangePassController extends GetxController {
  RxString newpass = "".obs;
  RxString confirmedpassword = "".obs;

  void newpasschanged(String value) {
    newpass.value = value;
  }

  void confirmedpasschanged(String value) {
    confirmedpassword.value = value;
  }
}
