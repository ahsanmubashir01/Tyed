// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';
import 'package:tyedapp/viewModel/YesNoScreen2Controller/YesNoScreen2Controller.dart';

import '../../Widgets/CustomAppBar.dart';
import '../../Widgets/CustomButton.dart';

class YesNoScreen2 extends StatefulWidget {
  const YesNoScreen2({super.key});
  @override
  State<YesNoScreen2> createState() => _YesNoScreenState();
}

class _YesNoScreenState extends State<YesNoScreen2> {
  RxString selectedValue = "Yes".obs;

  final YesNoScreen2Controller controller = Get.put(YesNoScreen2Controller());
  // String? selectedValue = "Yes";
  Color selectedColor =
      AppColorsConstants.AppMainColor; // Custom color for selected RadioButton
  Color unselectedColor =
      Colors.black; // Custom color for unselected RadioButton
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
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Do you share any debt such as a joint credit card?",
                  style: AppTextConstant.SimpleStyle,
                )),
            SizedBox(
              height: Get.height * 0.015,
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
                          groupValue: selectedValue.value,
                          // groupValue: controller.selectedValue.value,
                          onChanged: (value) {
                            // controller.selectedValue(value!);
                            selectedValue.value = value!;
                          },
                        ),
                        Text(
                          "Yes",
                          style: TextStyle(
                            color: selectedValue.value == 'Yes'
                                // color: controller.selectedValue.value == 'Yes'
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
                          groupValue: selectedValue.value,
                          // groupValue: controller.selectedValue.value,
                          onChanged: (value) {
                            // controller.setSelectedValue(value!);
                            selectedValue.value = value!;
                          },
                        ),
                        Text(
                          "No",
                          style: TextStyle(
                            color: controller.selectedValue.value == 'No'
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
                Get.toNamed(RoutesName.YesNoScreen3);
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
