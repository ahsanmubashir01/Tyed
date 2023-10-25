import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tyedapp/viewModel/VerifyEmailController/VerifyEmailController.dart';

import '../../Widgets/CustomButton.dart';
import '../../Widgets/Pincodefields.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  final VerifyEmailController controller = Get.put(VerifyEmailController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center the content vertically
          children: [
            Image.asset(
              'assets/sampleimage.png',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 10),
            Text(
              'Verify Your Email',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Please enter the 4 Digit Code to\n@idperson.com",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBorderTextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                      controller.textfield1.value = value;
                    },
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      bottomLeft: Radius.circular(32),
                    ),
                    width: 70,
                    height: 60,
                    hintText: "0"),
                CustomBorderTextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                      controller.textfield2.value = value;
                    },
                    width: 70,
                    height: 60,
                    hintText: "0"),
                CustomBorderTextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                      controller.textfield3.value = value;
                    },
                    width: 70,
                    height: 60,
                    hintText: "0"),
                CustomBorderTextField(
                    onChanged: (value) {
                      controller.textfield4.value = value;
                    },
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    ),
                    width: 70,
                    height: 60,
                    hintText: "0"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Dodn't Receive a Code!"),
                SizedBox(width: 5),
                Text(
                  'Resend',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(229, 76, 56, 1)),
                ),
              ],
            ),
            SizedBox(height: 35),
            CustomElevatedButton(
              text: 'Verify',
              onpress: () {},
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
