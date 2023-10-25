// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';

import '../../Widgets/CustomButton.dart';

class PdfViewer extends StatefulWidget {
  const PdfViewer({Key? key}) : super(key: key);

  @override
  _PdfVierState createState() => _PdfVierState();
}

class _PdfVierState extends State<PdfViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              height: Get.height * 0.1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 14,
                      ),
                    ),
                    Text(
                      'Document 1',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: Get.width * 0.2,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: Get.height * 0.03),
                        child: SvgPicture.asset('assets/blackiconbackward.svg'),
                      ),
                      SizedBox(
                        height: Get.height * 0.5,
                        width: Get.width * 0.55,
                        child: Padding(
                          padding: EdgeInsets.only(top: Get.height * 0.05),
                          child: SfPdfViewer.asset('assets/sample.pdf'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: Get.height * 0.03),
                        child: SvgPicture.asset('assets/blackiconforward.svg'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            CustomElevatedButton(
                onpress: () {},
                text: "Edit",
                height: Get.height * 0.05,
                width: Get.width * 0.4,
                colors: AppColorsConstants.AppMainColor),
          ],
        ),
      ),
    );
  }
}
