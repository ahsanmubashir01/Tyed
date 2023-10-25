// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

import '../../Widgets/CustomAppBar.dart';
import '../../Widgets/CustomButton.dart';
import '../../Widgets/Dialoge.dart';
import '../../viewModel/YesNoScreensController/YesNoScreensController.dart';

class YesNoScreen extends StatefulWidget {
  const YesNoScreen({super.key});
  @override
  State<YesNoScreen> createState() => _YesNoScreenState();
}

class _YesNoScreenState extends State<YesNoScreen> {
  final PersonController controller = Get.put(PersonController());
  final YesNoController yesNoController = Get.put(YesNoController());

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
                    "Do you co-own any assets?",
                    style: AppTextConstant.SimpleStyle,
                  )),
              SizedBox(
                height: Get.height * 0.012,
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
                            groupValue: yesNoController.selectedValue.value,
                            onChanged: (value) {
                              yesNoController.setSelectedValue(value!);
                            },
                          ),
                          Text(
                            "Yes",
                            style: TextStyle(
                              color: yesNoController.selectedValue.value ==
                                      'Yes'
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
                height: Get.height * 0.015,
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
                            value: "No",
                            groupValue: yesNoController.selectedValue.value,
                            onChanged: (value) {
                              yesNoController.setSelectedValue(value!);
                            },
                          ),
                          Text(
                            "No",
                            style: TextStyle(
                              color: yesNoController.selectedValue.value == 'No'
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
                  controller.showCustomDialog(context, title: "Separate Debt",
                      onpress: () {
                    Get.toNamed(RoutesName.PayingScreen);
                  },
                      content:
                          "Would you like to list any debt that only one person is responsible for?");
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
