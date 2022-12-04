import 'package:chotdat/color.dart';
import 'package:flutter/material.dart';

class MyButtonOutline extends StatelessWidget {
  String text = "";
  bool isActive = false;
  double? width;
  Color? color;
  void Function()? onTap;

  MyButtonOutline(
      {super.key,
      required this.text,
      this.width,
      this.color,
      this.isActive = false,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          width: width,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: color ?? Styles.primaryColor),
              color: isActive ? color : Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(2, 2),
                )
              ]),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: isActive
                    ? Colors.white
                    : (color ?? const Color(0xff8e8e8e)),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
