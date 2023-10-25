import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'RoundedButton.dart';

// ignore: must_be_immutable
class RoundedButon2 extends StatelessWidget {
  String? title;
  RoundedButon2({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      widget: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[50],
              boxShadow: const [
                BoxShadow(
                  color: Colors.white, // Color of the shadow
                  // Spread radius
                  // Blur radius
                  offset: Offset(0, 2), // Offset of the shadow
                ),
              ],
              borderRadius: BorderRadius.circular(100)),
          height: Get.height * 0.03,
          width: Get.width * 0.065,
          child: const Icon(
            size: 14,
            Icons.add,
            color: Colors.red,
          ),
        ),
        Text(
          "$title",
          style: const TextStyle(
              fontSize: 11, color: Color.fromRGBO(243, 77, 77, 1)),
        ),
        const SizedBox(width: 15),
      ]),
      width: Get.width * 0.5,
      height: Get.height * 0.04,
    );
  }
}