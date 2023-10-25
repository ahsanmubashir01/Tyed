import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tyedapp/viewModel/ForgetPassController/ForgetPassController.dart';

import '../../Widgets/CustomButton.dart';
import '../../Widgets/signuppwidgets.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final ForgetPassController controller = Get.put(ForgetPassController());
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
                'Forget Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              height,
              Text(
                "Please enter your Email Address to\nReceiveVerification Code",
                textAlign: TextAlign.center,
              ),
              height,
              height,
              height,
              CustomTextFieldSignup(
                onChanged: (value) {
                  controller.email(value);
                },
                hintText: 'Current Security Code',
                prefixIcon: SvgPicture.asset(
                  'assets/uploadducuments.svg',
                ),
              ),
              height,
              SizedBox(
                height: 35,
              ),
              CustomElevatedButton(
                text: 'Send',
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
