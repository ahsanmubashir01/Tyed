// ignore_for_file: file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';

// ignore: must_be_immutable
class CustomColumn extends StatefulWidget {
  final String? selectedValue;
  final ValueChanged<String?> onChanged;
  final TextStyle textStyle;
  final String title;
  final String? yesText;
  final String? noText;

  CustomColumn({
    Key? key,
    required this.title,
    this.selectedValue,
    required this.onChanged,
    this.textStyle = const TextStyle(
      fontSize: 12,
    ),
    this.yesText,
    this.noText,
  }) : super(key: key);

  @override
  State<CustomColumn> createState() => _CustomColumnState();
}

class _CustomColumnState extends State<CustomColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: 12),
          ),
          buildRadioOption(widget.yesText ?? "Yes"),
          buildRadioOption(widget.noText ?? "No"),
        ],
      ),
    );
  }

  Widget buildRadioOption(String value) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      height: Get.height * 0.055,
      width: Get.width,
      child: Row(
        children: [
          Radio(
            activeColor: AppColorsConstants
                .AppMainColor, // Set the radio button color to red when selected
            value: value,
            groupValue: widget.selectedValue,
            onChanged: widget.onChanged,
          ),
          Text(
            value,
            style: TextStyle(
              color: widget.selectedValue == value
                  ? AppColorsConstants.AppMainColor
                  : widget.textStyle.color,
              fontSize: widget.textStyle.fontSize,
            ),
          )
        ],
      ),
    );
  }
}
