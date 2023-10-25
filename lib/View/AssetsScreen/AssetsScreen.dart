// ignore_for_file: must_be_immutable, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

import '../../Widgets/CustomAppBar.dart';
import '../../Widgets/CustomButton.dart';
import '../../Widgets/Dialoge.dart';
import '../../Widgets/RectangularButton.dart';
import '../../Widgets/RoundedButton.dart';

class AssetsScreen extends StatelessWidget {
  AssetsScreen({super.key});
  List images = ["assets/house.svg", "assets/car.svg", "assets/money.svg"];
  List title = ["Real Estate", "Vehicle", "Financial (investment, etc.)"];
  final PersonController controller = Get.put(PersonController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          svgImagePath: 'assets/30percent.svg',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Get.height * 0.45,
                  decoration: BoxDecoration(
                    color: Colors
                        .white, // Set the background color of the container
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.grey.withOpacity(0.2), // Color of the shadow
                        spreadRadius: 0, // Spread radius
                        blurRadius: 2, // Blur radius
                        offset: Offset(0, 2), // Offset of the shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Obx(
                          () => ListView.builder(
                            shrinkWrap: true,
                            itemCount: controller.index.value,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "What assets belong only to you?",
                                          style: AppTextConstant.SimpleStyle,
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            int a = controller.index.value;
                                            if (a > 1) {
                                              a--;
                                            }
                                            controller.setIndex(a);
                                          },
                                          child:
                                              Image.asset("assets/group3.png"),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.013,
                                    ),
                                    InkWell(
                                        onTap: () =>
                                            controller.setCount(0, index),
                                        // ignore: avoid_unnecessary_containers
                                        child: Container(
                                          child: RectangularTextButton(
                                            indexx: 0,
                                            index: index,
                                            widget: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(children: [
                                                Transform.scale(
                                                    scaleX: 1.5,
                                                    scaleY: 1.5,
                                                    child: SvgPicture.asset(
                                                        images[0])),
                                                Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Text(
                                                      title[0],
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ))
                                              ]),
                                            ),
                                          ),
                                        )),
                                    SizedBox(height: Get.height * 0.013),
                                    InkWell(
                                        onTap: () =>
                                            controller.setCount(1, index),
                                        child: RectangularTextButton(
                                          indexx: 1,
                                          index: index,
                                          widget: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(children: [
                                              Transform.scale(
                                                  scaleX: 1.5,
                                                  scaleY: 1.5,
                                                  child: SvgPicture.asset(
                                                      images[1])),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text(title[1],
                                                      style: AppTextConstant
                                                          .SimpleStyle))
                                            ]),
                                          ),
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                        onTap: () =>
                                            controller.setCount(2, index),
                                        child: RectangularTextButton(
                                          indexx: 2,
                                          index: index,
                                          widget: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(children: [
                                              Transform.scale(
                                                  scaleX: 1.5,
                                                  scaleY: 1.5,
                                                  child: SvgPicture.asset(
                                                      images[2])),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text(title[2],
                                                      style: AppTextConstant
                                                          .SimpleStyle))
                                            ]),
                                          ),
                                        )),
                                    SizedBox(height: Get.height * 0.013),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Obx(
                                          () => Text(
                                            "What are the details of this  ${title[controller.count.value[index]]}?",
                                            overflow: TextOverflow.visible,
                                            style: TextStyle(
                                              fontSize: controller
                                                          .count.value[index] ==
                                                      2
                                                  ? 10
                                                  : 12,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: Get.height * 0.012),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors
                                            .white, // Set the background color of the container
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child: TextFormField(
                                        controller: controller.details.value,
                                        decoration: InputDecoration(
                                            border: InputBorder.none),
                                        maxLines: 4,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                RoundedButton(
                  onpress: () async {
                    int a = controller.index.value;
                    a++;
                    controller.setIndex(a);
                  },
                  widget: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.2), // Color of the shadow
                                  spreadRadius: 5, // Spread radius
                                  blurRadius: 7, // Blur radius
                                  offset: Offset(0, 2), // Offset of the shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(100)),
                          height: Get.height * 0.02,
                          width: Get.width * 0.045,
                          child: Icon(
                            size: 14,
                            Icons.add,
                            color: AppColorsConstants.AppMainColor,
                          ),
                        ),
                        Text(
                          "Add another separate asset",
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColorsConstants.AppMainColor),
                        )
                      ]),
                  width: Get.width * 0.5,
                  height: Get.height * 0.04,
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomElevatedButton(
                    onpress: () {
                      Get.toNamed(RoutesName.YesNoScreen);
                    },
                    text: "Next",
                    height: Get.height * 0.05,
                    width: Get.width * 0.4,
                    colors: AppColorsConstants.AppMainColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
