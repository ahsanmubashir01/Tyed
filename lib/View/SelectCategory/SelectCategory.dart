// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';

import 'package:tyedapp/View/InsurancePdfdocImages/InsurancePdfdocImages.dart';

import '../../Widgets/CustomAppbar2.dart';
import '../../Widgets/CustomButton.dart';

class SelectCategory extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const SelectCategory({Key? key});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  int? selectedRadio; // Track the selected option

  @override
  void initState() {
    super.initState();
    // Automatically select "Insurance" on initialization
    selectedRadio = 0;
  }

  final options = [
    "Insurance",
    "Bank Statement",
    "Tax Reports",
    "Bills",
    "Others"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar2(
            height: Get.height * 0.1,
            titleText: 'Select Category',
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          SizedBox(
            width: Get.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (context, index) {
                  final options = [
                    "Insurance",
                    "Bank Statement",
                    "Tax Reports",
                    "Bills",
                    "Others"
                  ];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            30), // Adjust the border radius as needed
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey, // Shadow color
                            offset: Offset(0, 3), // Offset of the shadow
                            blurRadius: 5, // Spread of the shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Radio(
                            activeColor: AppColorsConstants.AppMainColor,
                            value: index,
                            groupValue: selectedRadio,
                            onChanged: (value) {
                              setState(() {
                                selectedRadio = value;
                              });
                            },
                          ),
                          Text(options[index]),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          CustomElevatedButton(
            onpress: () {
              Get.to(Insurancepdfdocimages());
            },
            text: "Next",
            height: Get.height * 0.05,
            width: Get.width * 0.4,
            colors: AppColorsConstants.AppMainColor,
          ),
        ],
      ),
    );
  }
}
