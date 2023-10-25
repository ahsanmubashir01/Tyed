import 'package:flutter/material.dart';

import 'RoundedButton.dart';

class RoundedButton2 extends StatelessWidget {
  const RoundedButton2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      widget: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2), // Color of the shadow
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: Offset(0, 2), // Offset of the shadow
                ),
              ],
              borderRadius: BorderRadius.circular(100)),
          height: 15,
          width: 15,
          child: const Icon(
            size: 14,
            Icons.add,
            color: Colors.red,
          ),
        ),
        const Text(
          "Add another separate asset",
          style: TextStyle(fontSize: 11, color: Color.fromRGBO(243, 77, 77, 1)),
        )
      ]),
      width: 170,
      height: 32,
    );
  }
}
