// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

import 'CustomButton.dart';

class CustomShareDocuments extends StatelessWidget {
  final String? title;
  VoidCallback? onpress;
  CustomShareDocuments({super.key, this.title, this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.08,
      width: Get.width,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 3,
          spreadRadius: 1,
          color: Colors.grey.shade100,
        ),
      ]),
      child: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration: BoxDecoration(
                color: AppColorsConstants.AppMainColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(27),
                ),
              ),
              height: Get.height * 0.065,
              width: Get.width * 0.16,
              child: Center(
                child: SvgPicture.asset("assets/document (2).svg"),
              ),
            ),
          ),
          SizedBox(
            width: Get.width * 0.03,
          ),
          Text("$title"),
          InkWell(
            onTap: () {
              Get.toNamed(RoutesName.PdfViewer);
            },
            child: Padding(
              padding: EdgeInsets.only(left: Get.width * 0.03),
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 3),
                      spreadRadius: 2,
                      blurRadius: 2,
                      color: Colors.grey.withOpacity(0.2),
                    )
                  ],
                  color: Colors.white,
                ),
                child: Center(
                  child: Transform.scale(
                    scale: 1.8,
                    child: SvgPicture.asset(
                      "assets/pencilicon.svg",
                      height: Get.height * 0.05,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: CustomElevatedButton(
                onpress: onpress,
                colors: AppColorsConstants.PrimaryColor,
                style: const TextStyle(fontSize: 8, color: Colors.white),
                text: "Share",
                height: 20,
                width: Get.width * 0.3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
