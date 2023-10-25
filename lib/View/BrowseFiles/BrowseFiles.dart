// // ignore_for_file: file_names

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
// import 'package:tyedapp/Constant/Constants/founts/Constants.dart';
// import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

// import '../../Widgets/CustomAppbar2.dart';
// import '../../Widgets/CustomShareDocuments.dart';

// class BrowseFiles extends StatefulWidget {
//   const BrowseFiles({Key? key}) : super(key: key);

//   @override
//   State<BrowseFiles> createState() => _BrowseFilesState();
// }

// class _BrowseFilesState extends State<BrowseFiles> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             CustomAppBar2(
//               height: Get.height * 0.10,
//               titleText: 'Add Family Document',
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: Get.height * 0.022),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: Get.height * 0.02,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(25),
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.2),
//                           spreadRadius: 5,
//                           blurRadius: 7,
//                           offset: const Offset(0, 2),
//                         ),
//                       ],
//                     ),
//                     width: Get.width,
//                     child: Column(
//                       children: [
//                         SvgPicture.asset(
//                           'assets/uploadducuments.svg',
//                           height: Get.height * 0.13,
//                         ),
//                         Text(
//                           'Upload the Documents you want\nto secure and share',
//                           style: AppTextConstant.SimpleStyle,
//                           textAlign: TextAlign.center,
//                         ),
//                         SizedBox(
//                           height: Get.height * 0.03,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             ElevatedButton(
//                               onPressed: () {},
//                               style: ElevatedButton.styleFrom(
//                                 fixedSize:
//                                     Size(Get.width * 0.45, Get.height * 0.04),
//                                 backgroundColor:
//                                     AppColorsConstants.PrimaryColor,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(30),
//                                     bottomRight: Radius.circular(30),
//                                     bottomLeft: Radius.circular(30),
//                                   ),
//                                 ),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Transform.scale(
//                                     scaleX: 1.4,
//                                     scaleY: 1.4,
//                                     child: SvgPicture.asset(
//                                       width: Get.height * 0.03,
//                                       height: Get.width * 0.1,
//                                       'assets/plus.svg',
//                                     ),
//                                   ),
//                                   Text('Browse Files',
//                                       style: AppTextConstant.BoldStyle.copyWith(
//                                           fontSize: 16,
//                                           color: Colors
//                                               .white) // Customize the text's style
//                                       ),
//                                 ],
//                               ),
//                             ),
//                             SizedBox(),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: Get.height * 0.02,
//                   ),
//                   Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         'Uploaded Document',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       )),
//                 ],
//               ),
//             ),
//             ListView.builder(
//               padding: EdgeInsets.zero,
//               shrinkWrap: true,
//               itemCount: 2,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: EdgeInsets.symmetric(
//                       horizontal: Get.width * 0.03, vertical: 8),
//                   child: CustomShareDocuments(
//                     title: "Document1",
//                     onpress: () {
//                       Get.toNamed(RoutesName.FamilyDocCheckout);
//                     },
//                   ),
//                 );
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
