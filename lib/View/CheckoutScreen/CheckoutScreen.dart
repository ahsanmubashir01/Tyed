// // ignore: file_names
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:tyedapp/Constant/Constants/colors/Constants.dart';
// import 'package:tyedapp/Constant/Constants/routes/routesName.dart';

// import '../../Widgets/CustomButton.dart';
// import '../../Widgets/CustomPdfRow.dart';

// class CheckOutScreen extends StatelessWidget {
//   // ignore: use_key_in_widget_constructors
//   const CheckOutScreen({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15),
//           child: SingleChildScrollView(
//             child: SizedBox(
//               height: Get.height,
//               width: Get.width,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Align(
//                     alignment: Alignment.topLeft,
//                     child: IconButton(
//                       onPressed: () {
//                         Get.back();
//                       },
//                       icon: const Icon(Icons.arrow_back_ios_new,
//                           size: 15), // Fixed icon size
//                     ),
//                   ),
//                   SizedBox(
//                     height: Get.height * 0.3,
//                     width: Get.width * 0.7,
//                     child: Center(
//                       child: SvgPicture.asset(
//                         "assets/marriage.svg",
//                       ),
//                     ),
//                   ),
//                   const Text(
//                     "To download and print your  tyed agreement,\ncomplete your payment.",
//                     style: TextStyle(fontSize: 13),
//                     textAlign: TextAlign.center,
//                   ),
//                   SizedBox(
//                     height: Get.height * 0.02,
//                   ),
//                   CustomElevatedButton(
//                     onpress: () {
//                       Get.toNamed(RoutesName.PaymentMethod);
//                     },
//                     text: "Checkout",
//                     height: Get.height * 0.05,
//                     width: Get.width * 0.42,
//                     colors: AppColorsConstants.AppMainColor,
//                   ),
//                   SizedBox(
//                     height: Get.height * 0.02,
//                   ),
//                   CustomPaint(
//                     painter: DrawDottedhorizontalline(),
//                     child: SizedBox(
//                       width:
//                           Get.width, // Set the width to span the entire screen
//                       height: 2, // Set the desired height of the divider
//                     ),
//                   ),
//                   SizedBox(
//                     height: Get.height * 0.02,
//                   ),
//                   CustomPdfRow(
//                     column1: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               "tyed agreement",
//                               style: TextStyle(fontSize: 12),
//                             ),
//                             InkWell(
//                               onTap: () {},
//                               child: Padding(
//                                 padding:
//                                     EdgeInsets.only(left: Get.width * 0.03),
//                                 child: Container(
//                                   height: 15,
//                                   width: 15,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(100),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         offset: const Offset(0, 3),
//                                         spreadRadius: 2,
//                                         blurRadius: 2,
//                                         color: Colors.grey.withOpacity(0.2),
//                                       )
//                                     ],
//                                     color: Colors.white,
//                                   ),
//                                   child: Center(
//                                     child: Transform.scale(
//                                       scale: 1.8,
//                                       child: SvgPicture.asset(
//                                         "assets/pencilicon.svg",
//                                         height: Get.height * 0.05,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             CustomElevatedButton(
//                               style: TextStyle(fontSize: 8),
//                               text: "Download",
//                               height: 17,
//                               colors: const Color.fromRGBO(204, 204, 204, 1),
//                               onpress: () {
//                                 // Add your onPressed logic here
//                               },
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: Get.width * 0.03),
//                               child: CustomElevatedButton(
//                                 style: TextStyle(
//                                   fontSize: 8,
//                                 ),
//                                 text: "Share",
//                                 height: 17,
//                                 colors: const Color.fromRGBO(204, 204, 204, 1),
//                                 onpress: () {
//                                   // Add your onPressed logic here
//                                 },
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class DrawDottedhorizontalline extends CustomPainter {
//   final Paint _paint;
//   DrawDottedhorizontalline() : _paint = Paint() {
//     _paint.color = Color.fromRGBO(204, 204, 204, 1); //dots color
//     _paint.strokeWidth = 2; //dots thickness
//     _paint.strokeCap = StrokeCap.square; //dots corner edges
//   }

//   @override
//   void paint(Canvas canvas, Size size) {
//     for (double i = -300; i < 300; i = i + 15) {
//       // 15 is space between dots
//       if (i % 3 == 0) {
//         canvas.drawLine(Offset(i, 0.0), Offset(i + 10, 0.0), _paint);
//       }
//     }
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }
