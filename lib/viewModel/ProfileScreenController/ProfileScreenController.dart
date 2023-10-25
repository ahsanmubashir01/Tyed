
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreenController extends GetxController {
  File? image;
  Rx<TextEditingController> firstNameController = TextEditingController().obs;
  Rx<TextEditingController> lastNameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> addressController = TextEditingController().obs;
  Rx<TextEditingController> dateController = TextEditingController().obs;
  Future<void> pickedImage() async {
    final picker = ImagePicker();
    try {
      final XFile? pickedFile =
          await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        image = File(pickedFile.path); // Convert PickedFile to File
      } else {
// Handle the case where the user didn't select an image
        Get.snackbar("No Image", "Please Select Image");
      }
    } catch (e) {
      Get.snackbar("An Error", " ${e.toString()}");
    }
  }
}
