// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

import '../../Widgets/CustomAppbar2.dart';
import '../../Widgets/CustomButton.dart';

class PaymentMethodProcess extends StatefulWidget {
  const PaymentMethodProcess({Key? key}) : super(key: key);

  @override
  State<PaymentMethodProcess> createState() => _PaymentMethodProcessState();
}

class _PaymentMethodProcessState extends State<PaymentMethodProcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              CustomAppBar2(
                height: Get.height * 0.1,
                titleText: 'Card Info',
                customWidth: 0.2,
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Image.asset(
                "assets/creditcardpic.png",
                height: Get.height * 0.22,
                width: Get.width * 0.7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Get.height * 0.013),
                    Padding(
                      padding: EdgeInsets.only(left: Get.width * 0.035),
                      child: Text(
                        "Card Holder",
                        style: AppTextConstant.hintText.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.01),
                    SizedBox(
                      height: Get.height * 0.05,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Transform.scale(
                              scale: 0.4,
                              child: SvgPicture.asset("assets/person.svg"),
                            ),
                            hintText: "Oguz Bulbul",
                            hintStyle: AppTextConstant.SimpleStyle,
                            contentPadding: EdgeInsets.all(6)),
                      ),
                    ),
                    SizedBox(height: Get.height * 0.01),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: Get.width * 0.035),
                          child: Text(
                            "Card Number",
                            style: AppTextConstant.hintText.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: Get.height * 0.01),
                        SizedBox(
                          height: Get.height * 0.05,
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Transform.scale(
                                  scale: 0.4,
                                  child:
                                      SvgPicture.asset("assets/cardimage2.svg"),
                                ),
                                hintText: "888532112155",
                                hintStyle: AppTextConstant.SimpleStyle,
                                contentPadding: EdgeInsets.all(6)),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: Get.width * 0.1),
                                    child: Text(
                                      "Expiry Date",
                                      style: AppTextConstant.hintText.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      height: Get.height * 0.05,
                                      width: Get.width * 0.33,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(6),
                                          hintText: "01/2022",
                                          hintStyle:
                                              AppTextConstant.SimpleStyle,
                                          prefixIcon: Transform.scale(
                                            scale: 0.4,
                                            child: SvgPicture.asset(
                                                "assets/Calendar.svg"),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(
                                width: Get.width * 0.03,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "CCV",
                                        style:
                                            AppTextConstant.hintText.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                          height: Get.height * 0.05,
                                          width: Get.width * 0.33,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(6),
                                              hintText: "0 0 0",
                                              hintStyle:
                                                  AppTextConstant.SimpleStyle,
                                              prefixIcon: Transform.scale(
                                                scale: 0.4,
                                                child: SvgPicture.asset(
                                                    "assets/BulkLock.svg"),
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.06,
                    ),
                    Center(
                      child: CustomElevatedButton(
                        onpress: () {
                          Get.toNamed(RoutesName.DownloadScreen);
                        },
                        text: "Pay Now",
                        height: Get.height * 0.05,
                        width: Get.width * 0.4,
                        colors: AppColorsConstants.AppMainColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
