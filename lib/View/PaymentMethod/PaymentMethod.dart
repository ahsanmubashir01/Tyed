// ignore_for_file: file_names, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

import '../../Widgets/CustomAppbar2.dart';
import '../../Widgets/CustomButton.dart';
import '../../Widgets/PaymentField.dart';

class PaymentMethod extends StatefulWidget {
  PaymentMethod({
    super.key,
  });

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool? isSelectedDebitCard = false;
  bool? isSelectedCreditCard = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar2(
                height: Get.height * 0.1,
                titleText: 'Payment Method',
                customWidth: 0.13),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Image.asset('assets/paymentmethodimage.png'),
                  SizedBox(height: Get.height * 0.04),
                  CustomOptionContainer(
                    isSelected: isSelectedDebitCard, // Use isSelected directly
                    onpress: () {
                      setState(() {
                        isSelectedDebitCard = true;
                        isSelectedCreditCard = false; // Toggle isSelected value
                      });
                    },
                    color: isSelectedDebitCard == true
                        ? AppColorsConstants.AppMainColor
                        : Colors.white,
                    text: 'By Credit Card',
                  ),
                  SizedBox(height: Get.height * 0.02),
                  CustomOptionContainer(
                    isSelected: isSelectedCreditCard, // Use isSelected directly
                    onpress: () {
                      setState(() {
                        isSelectedCreditCard = true;
                        isSelectedDebitCard = false; // Toggle isSelected value
                      });
                    },
                    color: isSelectedCreditCard == true
                        ? Colors.amber
                        : Colors.white,
                    text: 'By Debit Card',
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  CustomElevatedButton(
                    onpress: () {
                      Get.toNamed(RoutesName.PaymentMethodProcess);
                    },
                    text: "Continue",
                    height: Get.height * 0.05,
                    width: Get.width * 0.4,
                    colors: AppColorsConstants.AppMainColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
