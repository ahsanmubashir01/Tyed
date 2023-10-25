import 'package:flutter/material.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String? hintText;
  final ValueChanged<String>? onChanged;
  CustomTextField({super.key, this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(32),
      elevation: 2.0,
      child: Container(
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white, // Set the background color of the container
            // Remove any shadow
          ),
          child: TextFormField(
              onChanged: onChanged,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                hintText: hintText, hintStyle: AppTextConstant.hintText,

                border: InputBorder.none, // Remove the outline border
              ))),
    );
  }
}
