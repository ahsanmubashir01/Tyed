// ignore_for_file: file_names

import 'package:get/get.dart';

class SignupController extends GetxController {
  RxString firsrname = "".obs;
  RxString lastname = "".obs;
  RxString email = "".obs;
  RxString address = "".obs;

  RxString password = "".obs;
  RxString phoneNo = "".obs;

  final pickedDate = Rx<DateTime?>(null);

  void firstnamechanged(String value) {
    firsrname.value = value;
  }

  void lastnamechanged(String value) {
    lastname.value = value;
  }

  void emailchanged(String value) {
    email.value = value;
  }

  void addresschanged(String value) {
    address.value = value;
  }

  void passwordchanged(String value) {
    password.value = value;
  }

  void phoneNumberchanged(String value) {
    phoneNo.value = value;
  }
}
