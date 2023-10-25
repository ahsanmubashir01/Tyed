// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Dialoge.dart';

// ignore: must_be_immutable
class RectangularTextButton extends StatelessWidget {
  VoidCallback? onpress;
  String? title;
  Widget? widget;
  RectangularTextButton(
      {super.key,
      this.widget,
      this.onpress,
      this.title,
      required this.index,
      this.indexx});
  final PersonController controller = Get.put(PersonController());
  int? indexx;
  int index;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.2,
      child: InkWell(
          onTap: onpress,
          child: Obx(
            () => Container(
              child: widget,
              height: 45,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 250, 251, 1),
                border: controller.count[index] == indexx
                    ? Border.all(
                        width: 1.5, color: Colors.pinkAccent.withOpacity(0.6))
                    : Border(),
              ),
            ),
          )),
    );
  }
}
