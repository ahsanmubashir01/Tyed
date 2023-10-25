// ignore_for_file: unnecessary_null_comparison, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final String imagePath;

  CustomCard({required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
      child: Column(
        children: [
          SizedBox(
            height: Get.height * 0.05,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  blurRadius: 2, // Blur radius
                  offset: Offset(1.1, 2.1), // Offset of the shadow
                ),
              ],
              borderRadius: BorderRadius.circular(22),
              color: Color.fromRGBO(255, 250, 251, 1),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.04, vertical: Get.height * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (text != null)
                    Text(
                      text,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  if (imagePath != null)
                    SvgPicture.asset(
                      imagePath,
                      height: Get.height * 0.13,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
