import 'package:chotdat/color.dart';
import 'package:flutter/material.dart';

class MyButtonOutline extends StatelessWidget {
  String text = "";

  MyButtonOutline({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Press");
      },
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Styles.primaryColor),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(2, 2),
                )
              ]),
          child: Text(
            text,
            style: const TextStyle(
                color: Color(0xff8e8e8e), fontSize: 14, fontWeight: FontWeight.bold),
          )),
    );
  }
}
