// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../Widgets/CustomButton.dart';
import '../../Widgets/signuppwidgets.dart';
import '../../viewModel/ChangePassController/ChangePassController.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});
  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final ChangePassController controller = Get.put(ChangePassController());
  var height = SizedBox(height: 10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.2,
              ),
              Image.asset(
                'assets/sampleimage.png',
                height: 200,
                width: 200,
              ),
              height,
              Text(
                'Change Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              height,
              height,
              height,
              CustomTextFieldSignup(
                onChanged: (value) {
                  controller.newpass(value);
                },
                hintText: 'New Password',
                prefixIcon: SvgPicture.asset(
                  'assets/uploadducuments.svg',
                ),
              ),
              height,
              CustomTextFieldSignup(
                onChanged: (value) {
                  controller.confirmedpassword(value);
                },
                hintText: 'Confirmed Password',
                prefixIcon: SvgPicture.asset(
                  'assets/uploadducuments.svg',
                ),
              ),
              height,
              SizedBox(
                height: Get.height * 0.03,
              ),
              CustomElevatedButton(
                text: 'Done',
                onpress: () {},
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
