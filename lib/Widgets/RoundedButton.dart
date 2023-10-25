import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundedButton extends StatelessWidget {
  double? height;
  double? width;

  Widget? widget;

  VoidCallback? onpress;
  RoundedButton({
    super.key,
    this.height,
    this.width,
    this.onpress,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(32),
      elevation: 0.2,
      child: InkWell(
        onTap: onpress,
        child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.white, // Set the background color of the container
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3), // Color of the shadow
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: Offset(0, 2), // Offset of the shadow
                ),
              ],
            ),
            child: widget),
      ),
    );
  }
}
