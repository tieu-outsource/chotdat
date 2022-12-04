import 'package:chotdat/color.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String text = "";
  double? width;
  Color? color;

  MyButton({super.key, required this.text, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Press");
      },
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          width: width,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: color ?? Styles.primaryColor,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(2, 2),
                )
              ]),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          )),
    );
  }
}
