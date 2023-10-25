// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'RectangularButton.dart';

// AssetsListViewBuilder
class AssetsListViewBuilder extends StatelessWidget {
  const AssetsListViewBuilder({
    super.key,
    required this.images,
    required this.title,
  });

  final List images;
  final List title;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: Get.height * 0.01),
          child: RectangularTextButton(
            index: 0,
            widget: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(children: [
                Transform.scale(
                    scaleX: 1.1,
                    scaleY: 1.1,
                    child: SvgPicture.asset(images[index])),
                SizedBox(
                  width: Get.width * 0.04,
                ),
                Text(
                  title[index],
                  style: const TextStyle(
                    fontSize: 11,
                  ),
                )
              ]),
            ),
          ),
        );
      },
    );
  }
}
