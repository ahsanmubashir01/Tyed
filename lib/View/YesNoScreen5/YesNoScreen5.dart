// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constant/Constants/colors/Constants.dart';
import '../../Constant/Constants/routes/routesName.dart';
import '../../Widgets/CustomAppBar.dart';
import '../../Widgets/CustomButton.dart';
import '../../viewModel/YesNoScreen5Controller/YesNoScreen5Controller.dart';

class YesNoScreen5 extends StatefulWidget {
  const YesNoScreen5({super.key});
  @override
  State<YesNoScreen5> createState() => _YesNoScreenState();
}

class _YesNoScreenState extends State<YesNoScreen5> {
  String? selectedValue = "Yes";
  Color selectedColor =
      AppColorsConstants.AppMainColor; // Custom color for selected RadioButton
  Color unselectedColor =
      Colors.black; // Custom color for unselected RadioButton
  final YesNo5Controller yesNo5Controller = Get.put(YesNo5Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        svgImagePath: 'assets/30percent.svg',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Do you and your future spouse live together?",
                  style: TextStyle(fontSize: 13),
                )),
            SizedBox(
              height: Get.height * 0.013,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color:
                    Colors.white, // Set the background color of the container
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), // Color of the shadow
                    spreadRadius: 5, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: Offset(0, 2), // Offset of the shadow
                  ),
                ],
              ),
              height: Get.height * 0.06,
              width: Get.width,
              child: Row(
                children: [
                  Obx(
                    () => Row(
                      children: [
                        Radio(
                          activeColor: AppColorsConstants
                              .AppMainColor, // Use your custom color here
                          value: "Yes",
                          groupValue: yesNo5Controller.selectedValue.value,
                          onChanged: (value) {
                            yesNo5Controller.selectedValue(value!);
                          },
                        ),
                        Text(
                          "Yes",
                          style: TextStyle(
                            color: yesNo5Controller.selectedValue.value == 'Yes'
                                ? AppColorsConstants
                                    .AppMainColor // Use your custom color here
                                : Colors.black, // Use your custom color here
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.016,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color:
                    Colors.white, // Set the background color of the container
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), // Color of the shadow
                    spreadRadius: 5, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset: Offset(0, 2), // Offset of the shadow
                  ),
                ],
              ),
              height: Get.height * 0.06,
              width: Get.width,
              child: Row(
                children: [
                  Obx(
                    () => Row(
                      children: [
                        Radio(
                          activeColor: AppColorsConstants
                              .AppMainColor, // Use your custom color here
                          value: "No",
                          groupValue: yesNo5Controller.selectedValue.value,
                          onChanged: (value) {
                            yesNo5Controller.setSelectedValue(value!);
                          },
                        ),
                        Text(
                          "No",
                          style: TextStyle(
                            color: yesNo5Controller.selectedValue.value == 'No'
                                ? AppColorsConstants
                                    .AppMainColor // Use your custom color here
                                : Colors.black, // Use your custom color here
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.06,
            ),
            CustomElevatedButton(
              onpress: () {
                Get.toNamed(RoutesName.PaySpousal);
              },
              text: "Next",
              height: Get.height * 0.05,
              width: Get.width * 0.4,
              colors: AppColorsConstants.AppMainColor,
            ),
          ],
        ),
      ),
    );
  }
}
