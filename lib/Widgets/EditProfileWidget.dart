// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomRowWithIcon extends StatelessWidget {
  final String svgImagePath; // SVG image path
  final String text; // Text
  final IconData iconData; // Icon data

  const CustomRowWithIcon({
    required this.svgImagePath,
    required this.text,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(svgImagePath),
        SizedBox(
          width: Get.width * 0.03,
        ),
        Text(text),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Icon(
              iconData,
              size: 12,
            ),
          ),
        ),
      ],
    );
  }
}
