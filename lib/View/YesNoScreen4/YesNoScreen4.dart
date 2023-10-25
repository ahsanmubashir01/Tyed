import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
import 'package:tyedapp/viewModel/YesNoScreen4Controller/YesNoScreen4Controller.dart';

import '../../Constant/Constants/colors/Constants.dart';
import '../../Constant/Constants/routes/routesName.dart';
import '../../Widgets/CustomAppBar.dart';
import '../../Widgets/CustomButton.dart';

class YesNoScreen4 extends StatefulWidget {
  const YesNoScreen4({super.key});
  @override
  State<YesNoScreen4> createState() => _YesNoScreenState();
}

class _YesNoScreenState extends State<YesNoScreen4> {
  String? selectedValue = "Yes";
  Color selectedColor =
      AppColorsConstants.AppMainColor; // Custom color for selected RadioButton
  Color unselectedColor =
      Colors.black; // Custom color for unselected RadioButton
  final YesNoScreen4Controller controller = Get.put(YesNoScreen4Controller());
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
                    "Do you have any pets?",
                    style: AppTextConstant.SimpleStyle,
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
                      color:
                          Colors.grey.withOpacity(0.2), // Color of the shadow
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
                            groupValue: controller.selectedValue.value,
                            onChanged: (value) {
                              controller.selectedValue(value!);
                            },
                          ),
                          Text(
                            "Yes",
                            style: TextStyle(
                              color: controller.selectedValue.value == 'Yes'
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
                      color:
                          Colors.grey.withOpacity(0.2), // Color of the shadow
                      spreadRadius: 5, // Spread radius
                      blurRadius: 7, // Blur radius
                      offset: Offset(0, 2), // Offset of the shadow
                    ),
                  ],
                ),
                height: Get.height * 0.06,
                width: Get.width,
                child: Row(children: [
                  Obx(
                    () => Row(
                      children: [
                        Radio(
                          activeColor: AppColorsConstants
                              .AppMainColor, // Use your custom color here
                          value: "No",
                          groupValue: controller.selectedValue.value,
                          onChanged: (value) {
                            controller.setSelectedValue(value!);
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
                ]),
              ),
              SizedBox(
                height: Get.height * 0.06,
              ),
              CustomElevatedButton(
                onpress: () {
                  Get.toNamed(RoutesName.YesNoScreen5);
                },
                text: "Next",
                height: Get.height * 0.05,
                width: Get.width * 0.4,
                colors: AppColorsConstants.AppMainColor,
              ),
            ],
          ),
        ));
  }
}
