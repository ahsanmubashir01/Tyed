import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'CustomElevatedButtonPdf.dart';

class DialogBox2 {
  String? title;
  String? content;
  VoidCallback? onpress;

  static showDialogBox2(BuildContext context,
      {String? title, String? content, VoidCallback? onpress}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            color: const Color.fromRGBO(255, 255, 255, 1),
            height: 200,
            width: 300,
            child: Column(
              children: [
                const Text(
                  "Rename",
                  style: TextStyle(fontSize: 14),
                ),
                Transform.scale(
                    scaleX: .8,
                    scaleY: .8,
                    child: SvgPicture.asset("assets/docs.svg")),
                Container(
                    height: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: const Color.fromRGBO(243, 77, 77, 1))),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Document 1 :",
                          hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(243, 77, 77, 1)),
                          contentPadding: EdgeInsets.only(left: 10, bottom: 18),
                          border: InputBorder.none),
                    )),
                const SizedBox(
                  height: 20,
                ),
                CustomElevatedButton(
                    onpress: () {},
                    text: "Save",
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                    height: 30,
                    width: 110,
                    colors: const Color.fromRGBO(243, 77, 77, 1))
              ],
            ),
          ),
        );
      },
    );
  }
}
