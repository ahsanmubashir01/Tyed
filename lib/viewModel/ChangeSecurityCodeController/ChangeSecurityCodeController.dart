import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ChangeSecurityCodeController extends GetxController {
  RxString currentsecuritycode = "".obs;
  RxString newsecuritycode = "".obs;
  void newsecuritycodechanged(String value) {
    currentsecuritycode.value = value;
  }

  void currentsecuritycodechanged(String value) {
    newsecuritycode.value = value;
  }
}
