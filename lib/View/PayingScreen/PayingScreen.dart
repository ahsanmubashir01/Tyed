// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

import '../../Widgets/CustomAppBar.dart';
import '../../Widgets/CustomButton.dart';
import '../../Widgets/Dialoge.dart';
import '../../Widgets/RectangularButton.dart';
import '../../Widgets/RoundedButton2.dart';

class PayingScreen extends StatefulWidget {
  const PayingScreen({super.key});
  @override
  State<PayingScreen> createState() => _PersonDetailsState();
}

class _PersonDetailsState extends State<PayingScreen> {
  List images = [
    "assets/creditcard.svg",
    "assets/loan.svg",
    "assets/credit.svg",
    "assets/debit.svg"
  ];
  List title = [
    "credit card",
    "Loan or mortgage",
    "Line of credit",
    "Other debt"
  ];
  final PersonController controller = Get.put(PersonController());
  List<bool> selectedItems = List.generate(1, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        svgImagePath: 'assets/30percent.svg',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  "What debt are you responsible for paying?",
                  style: AppTextConstant.SimpleStyle,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color:
                      Colors.white, // Set the background color of the container
                  boxShadow: [
                    BoxShadow(
                      color:
                          Colors.grey.withOpacity(0.2), // Color of the shadow
                      spreadRadius: 5, // Spread radius
                      blurRadius: 7, // Blur radius
                      offset: const Offset(0, 2), // Offset of the shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Separate Debt",
                            style: AppTextConstant.SimpleStyle,
                          ),
                          Image.asset("assets/group3.png")
                        ],
                      ),
                      SizedBox(
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: images.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: GestureDetector(
                                onTap: () {},
                                child: RectangularTextButton(
                                  index: 0,
                                  widget: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Transform.scale(
                                              scaleX: 1.5,
                                              scaleY: 1.5,
                                              child: SvgPicture.asset(
                                                images[index],
                                              )),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Text(
                                              title[index],
                                              style:
                                                  AppTextConstant.SimpleStyle,
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          "What are the details of this credit card?",
                          style: AppTextConstant.SimpleStyle,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors
                              .white, // Set the background color of the container
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.2), // Color of the shadow
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 2), // Offset of the shadow
                            ),
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(border: InputBorder.none),
                          maxLines: 4,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.005,
              ),
              const RoundedButton2(),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomElevatedButton(
                  onpress: () {
                    Get.toNamed(RoutesName.YesNoScreen2);
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
    );
  }
}
