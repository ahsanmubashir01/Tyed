// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

import '../../Widgets/MainScreenWidget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsConstants.AppMainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/profile.svg'),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello John!',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Welcome to tyed',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 22,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/user photo.png'), // Provide your image path here
                                fit: BoxFit.cover, // Center-crop the image
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Container(
                height: Get.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(RoutesName.CommitmentMilestone);
                      },
                      child: CustomCard(
                        text: 'tyed Marriage\n Agreement',
                        imagePath: 'assets/mainpageimage1.svg',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(RoutesName.FamilyDocumentsFolder);
                      },
                      child: CustomCard(
                        text: 'Add Family\nDocuments',
                        imagePath: 'assets/mainipage2.svg',
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
