import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgreementScreenController extends GetxController {
  final TextEditingController detailController = TextEditingController();
  RxString selectedValue = "No".obs;
  void setSelecteValue(String value) {
    selectedValue.value = value;
  }
}
