// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

import 'package:tyedapp/viewModel/SigninController/SigninController.dart';

import '../../Widgets/CustomButton.dart';
import '../../Widgets/signuppwidgets.dart';

class Signin extends StatelessWidget {
  final SigninController controller = Get.put(SigninController());
  Signin({super.key});

  // ignore: non_constant_identifier_names
  var SizeBoxheight = SizedBox(height: Get.height * 0.015);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/signupsignin.png',
                height: Get.height * 0.27,
                width: Get.width * 0.58,
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Text(
                'Sign In',
                style: AppTextConstant.BoldStyle,
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              CustomTextFieldSignup(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  controller.email.value = value;
                },
                hintText: 'Johnsondoe@gmail.com',
                prefixIcon: Transform.scale(
                  scaleX: .4,
                  scaleY: .4,
                  child: SvgPicture.asset(
                    'assets/email.svg',
                  ),
                ),
              ),
              SizeBoxheight,
              CustomTextFieldSignup(
                keyboardType: TextInputType.visiblePassword,
                onChanged: (value) {
                  controller.password.value = value;
                },
                hintText: 'Password',
                prefixIcon: Transform.scale(
                  scaleX: .4,
                  scaleY: .4,
                  child: SvgPicture.asset(
                    'assets/Lock.svg',
                  ),
                ),
                suffixIcon: Transform.scale(
                  scaleX: .7,
                  scaleY: .7,
                  child: SvgPicture.asset(
                    'assets/eye.svg',
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.06,
              ),
              CustomElevatedButton(
                width: Get.width * 0.4,
                text: 'Sign In',
                onpress: () {
                  Get.toNamed(RoutesName.CustomBottomNavigationBar);
                },
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: AppTextConstant.SimpleStyle,
                  ),
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Get.toNamed(RoutesName.Signup);
                    },
                    child: Text(
                      'Sign up',
                      style: AppTextConstant.BoldStyle.copyWith(
                          color: AppColorsConstants.AppMainColor, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
