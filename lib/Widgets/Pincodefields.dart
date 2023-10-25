import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class CustomBorderTextField extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double width;
  final double height;
  final String hintText;
  final ValueChanged<String>? onChanged;

  CustomBorderTextField({
    this.borderRadius,
    required this.width,
    required this.height,
    required this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 2,
            offset: Offset(1.1, 2.1),
          ),
        ],
        borderRadius: borderRadius,
        color: Colors.white,
      ),
      child: TextField(
        style: Theme.of(context).textTheme.headline4,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: onChanged, // Pass the onChanged callback
      ),
    );
  }
}