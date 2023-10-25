import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

class BothSignatureController extends GetxController {
  final SignatureController yourSignatureController = SignatureController(
    penStrokeWidth: 3,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
  );

  final SignatureController spouseSignatureController = SignatureController(
    penStrokeWidth: 3,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
  );

  void clearYourSignature() {
    yourSignatureController.clear();
  }

  void clearSpouseSignature() {
    spouseSignatureController.clear();
  }
}
