// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

import '../../Widgets/AssetListviewBuilder.dart';
import '../../Widgets/CustomAppBar.dart';
import '../../Widgets/CustomButton.dart';
import '../../Widgets/RoundedButton2.dart';

class InheritScreen extends StatefulWidget {
  const InheritScreen({super.key});

  @override
  State<InheritScreen> createState() => _InheritScreenState();
}

class _InheritScreenState extends State<InheritScreen> {
  List images = [
    "assets/spouse.svg",
    "assets/law.svg",
    "assets/spouse.svg",
  ];
  List title = [
    "Only what's specified in the Last Will\n of the deceased spouse",
    "A portion of the estate as determined\nby local law",
    "What's in the Last Will and additional\nitems"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        svgImagePath: 'assets/80percent.svg',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // Set the background color of the container
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.05,
                        vertical: Get.height * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: Get.height * 0.01),
                          child: Text(
                            "If one of you passed away, what would the tyed\n surviving spouse inherit?",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        AssetsListViewBuilder(images: images, title: title),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: Get.height * 0.01),
                          child: Text(
                              "What additional inheritance rights would you like\nto include?",
                              style: AppTextConstant.SimpleStyle),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // Set the background color of the container
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            maxLines: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                const RoundedButton2(),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomElevatedButton(
                    onpress: () {
                      Get.toNamed(RoutesName.AgreementScreen);
                    },
                    text: "Next",
                    height: Get.height * 0.05,
                    width: Get.width * 0.4,
                    colors: AppColorsConstants.AppMainColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
