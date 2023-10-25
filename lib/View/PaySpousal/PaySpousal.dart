// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

import '../../Widgets/CustomAppBar.dart';
import '../../Widgets/CustomButton.dart';
import '../../Widgets/CustomContainer.dart';
import '../../Widgets/YesNoScreen.dart';

class PaySpousal extends StatefulWidget {
  const PaySpousal({super.key});

  @override
  State<PaySpousal> createState() => _PaySpousalState();
}

class _PaySpousalState extends State<PaySpousal> {
  String? selectedValue = "Yes";
  Color selectedColor =
      AppColorsConstants.AppMainColor; // Custom color for selected RadioButton
  Color unselectedColor =
      Colors.black; // Custom color for unselected RadioButton
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsConstants.SecondaryColor,
      appBar: const CustomAppBar(
        svgImagePath: 'assets/80percent.svg',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.24,
                child: CustomColumn(
                  yesText: "No",
                  noText: "Yes,specify",
                  title:
                      "If the tyed marriage ends, will either of you pay spousalsupport to the other?",
                  selectedValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  textStyle: AppTextConstant.SimpleStyle,
                ),
              ),
              Text(
                'What spousal support will be provided?',
                style: AppTextConstant.SimpleStyle,
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              CustomContainer(
                child: TextFormField(
                  decoration: InputDecoration(border: InputBorder.none),
                  maxLines: 4,
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              SizedBox(
                height: Get.height * 0.25,
                child: CustomColumn(
                  yesText: "Yes", noText: "No",
                  title:
                      "Will spousal support end if the spouse receiving support enters a new commitment or common-law relationship?",
                  selectedValue: selectedValue, // Provide selectedValue
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  textStyle: TextStyle(fontSize: 12), // Provide textStyle
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomElevatedButton(
                    onpress: () {
                      Get.toNamed(RoutesName.InheritScreen);
                    },
                    text: "Next",
                    height: Get.height * 0.05,
                    width: Get.width * 0.4,
                    colors: AppColorsConstants.AppMainColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
