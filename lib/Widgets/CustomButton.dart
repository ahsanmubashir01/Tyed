// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';

// ignore: must_be_immutable
class CustomElevatedButton extends StatelessWidget {
  TextStyle? style;
  double? height;
  double? width;
  Color? colors;
  String? text;
  VoidCallback? onpress;
  CustomElevatedButton(
      {Key? key,
      this.height,
      this.width,
      this.colors,
      this.onpress,
      this.text,
      this.style})
      : super(key: key); // Added super(key: key) to fix the constructor

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors ??
              AppColorsConstants
                  .AppMainColor, // Use provided color or fallback to red
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        onPressed: onpress, // Use the provided callback here
        child: Center(
          child: Text(
            "$text",
            style: style ??
                const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
