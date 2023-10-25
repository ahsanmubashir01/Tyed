// ignore_for_file: must_be_immutable, non_constant_identifier_names, prefer_const_constructors_in_immutables
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';
import '../../Widgets/CustomButton.dart';
import '../../Widgets/signuppwidgets.dart';
import '../../viewModel/SignupController/SignUpController.dart';

import '../Signin/signin.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController calenderController = TextEditingController();

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      String formattedDate = DateFormat('MM dd yyyy').format(picked);
      calenderController.text = formattedDate.toString();
    }
  }

  final SignupController controller = Get.put(SignupController());

  bool isChecked = false;

  var SizeBoxheight = SizedBox(height: Get.height * 0.015);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/signupsignin.png',
                height: Get.height * 0.25,
                width: Get.width * 0.58,
              ),
              SizedBox(
                height: Get.height * 0.025,
              ),
              Text(
                'Sign Up',
                style: AppTextConstant.BoldStyle,
              ),
              SizedBox(
                height: Get.height * 0.025,
              ),
              CustomTextFieldSignup(
                keyboardType: TextInputType.name,
                onChanged: (value) {
                  controller.firsrname.value = value;
                },
                hintText: 'First name',
                prefixIcon: Transform.scale(
                  scaleX: .4,
                  scaleY: .4,
                  child: SvgPicture.asset(
                    'assets/Iconly-Bold-Profile.svg',
                  ),
                ),
              ),
              SizeBoxheight,
              CustomTextFieldSignup(
                keyboardType: TextInputType.name,
                onChanged: (value) {
                  controller.lastname.value = value;
                },
                hintText: 'Last name',
                prefixIcon: Transform.scale(
                  scaleX: .4,
                  scaleY: .4,
                  child: SvgPicture.asset(
                    'assets/Iconly-Bold-Profile.svg',
                  ),
                ),
              ),
              SizeBoxheight,
              CustomTextFieldSignup(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  controller.email.value = value;
                },
                hintText: 'Email',
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
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  controller.phoneNo.value = value;
                },
                hintText: 'Phone number',
                prefixIcon: Transform.scale(
                  scaleX: .4,
                  scaleY: .4,
                  child: SvgPicture.asset(
                    'assets/phone.svg',
                  ),
                ),
              ),
              SizeBoxheight,
              CustomTextFieldSignup(
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  controller.address.value = value;
                },
                hintText: 'Address',
                prefixIcon: Transform.scale(
                  scaleX: .4,
                  scaleY: .4,
                  child: SvgPicture.asset(
                    'assets/Location.svg',
                  ),
                ),
              ),
              SizeBoxheight,
              CustomTextFieldSignup(
                controller: calenderController,
                readOnly: true,
                onTap: () {
                  selectDate(context);
                },
                hintText: 'MM DD YYYY',
                prefixIcon: Transform.scale(
                  scaleX: .4,
                  scaleY: .4,
                  child: SvgPicture.asset(
                    'assets/Calendar.svg',
                  ),
                ),
              ),
              SizeBoxheight,
              CustomTextFieldSignup(
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: Transform.scale(
                  scaleX: .7,
                  scaleY: .7,
                  child: SvgPicture.asset(
                    'assets/eye.svg',
                  ),
                ),
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
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomCheckbox(),
                  SizedBox(
                    width: 6,
                  ),
                  Text('I agree to'),
                  Text(
                    'Terms and Conditions',
                    style: TextStyle(color: AppColorsConstants.AppMainColor),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.025,
              ),
              CustomElevatedButton(
                width: Get.width * 0.4,
                text: 'Sign up',
                onpress: () {
                  Get.toNamed(RoutesName.Signin);
                },
              ),
              SizeBoxheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an Account?',
                    style: AppTextConstant.SimpleStyle,
                  ),
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Get.to(Signin());
                    },
                    child: Text(
                      'Sign in',
                      style: AppTextConstant.BoldStyle.copyWith(
                          fontSize: 15, color: AppColorsConstants.AppMainColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
