// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../Constant/Constants/founts/Constants.dart';

class CustomTextFieldSignup extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final Callback? onTap;
  const CustomTextFieldSignup(
      {this.onChanged,
      this.controller,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType,
      this.readOnly,
      this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 2,
            offset: Offset(1.1, 2.1),
          ),
        ],
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
      ),
      height: Get.height * 0.058,
      child: TextFormField(
        onTap: onTap,
        readOnly: readOnly ?? false,
        keyboardType: keyboardType,
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextConstant.hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class CustomCheckbox extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              blurRadius: 2, // Blur radius
              offset: Offset(1.1, 2.1), // Offset of the shadow
            ),
          ],
          borderRadius: BorderRadius.circular(52),
          color: Colors.white,
        ),
        child: Container(
          height: 20, // Adjust the height as needed
          width: 20, // Adjust the width as needed
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white, // Red outline color
              width: 2.0,
            ),
          ),
          child: isChecked
              ? Icon(
                  Icons.check,
                  size: 15,
                  color: Colors.green,
                )
              : null,
        ),
      ),
    );
  }
}
