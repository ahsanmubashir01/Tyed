// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tyedapp/viewModel/ChangeSecurityCodeController/ChangeSecurityCodeController.dart';

import '../../Widgets/CustomButton.dart';
import '../../Widgets/signuppwidgets.dart';

class ChangeSecurityCode extends StatelessWidget {
  ChangeSecurityCode({super.key});

  final ChangeSecurityCodeController controller =
      Get.put(ChangeSecurityCodeController());
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
                'Change Security Code',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              height,
              height,
              height,
              CustomTextFieldSignup(
                onChanged: (value) {
                  controller.currentsecuritycodechanged(value);
                },
                hintText: 'Current Security Code',
                prefixIcon: SvgPicture.asset(
                  'assets/uploadducuments.svg',
                ),
              ),
              height,
              CustomTextFieldSignup(
                onChanged: (value) {
                  controller.newsecuritycode.value = value;
                },
                hintText: 'New Security Code',
                prefixIcon: SvgPicture.asset(
                  'assets/uploadducuments.svg',
                ),
              ),
              SizedBox(
                height: 45,
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
