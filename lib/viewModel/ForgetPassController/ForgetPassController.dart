import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ForgetPassController extends GetxController {
  RxString email = "".obs;
  void emailchanged(String value) {
    email.value = value;
  }
}
