import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  CustomContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Set the background color of the container
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Color of the shadow
            spreadRadius: 5, // Spread radius
            blurRadius: 7, // Blur radius
            offset: Offset(0, 2), // Offset of the shadow
          ),
        ],
      ),
      child: child,
    );
  }
}
