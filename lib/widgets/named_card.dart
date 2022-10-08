import 'dart:ffi';

import 'package:chotdat/color.dart';
import 'package:flutter/material.dart';

class NamedCard extends StatelessWidget {
  final String title;
  final Widget child;
  final String? badge;
  final bool hasViewMore;

  const NamedCard(
      {super.key,
      required this.title,
      required this.child,
      this.badge,
      this.hasViewMore = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 5, right: 5, bottom: 10),
      child: Stack(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 30),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Styles.strokeColor),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(3, 3),
                    blurRadius: 3,
                    spreadRadius: 0.5),
                const BoxShadow(
                  color: Colors.white,
                ),
              ],
            ),
            child: child,
          ),
          Transform.translate(
            offset: const Offset(-5, -16),
            child: Container(
              width: 170,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Styles.primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, right: 5, left: 10),
                      child: Text(
                        title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                  if (badge != null)
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        border: Border(
                            left: BorderSide(width: 2, color: Colors.white)),
                      ),
                      child: Text(badge ?? "",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                ],
              ),
            ),
          ),
          if (hasViewMore)
            Positioned(
                bottom: 0,
                left: MediaQuery.of(context).size.width / 2,
                child: FractionalTranslation(
                    translation: const Offset(-0.5, 0.5),
                    child: SizedBox(
                      height: 20,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 30),
                            side: const BorderSide(
                                width: 1, color: Styles.greenColor),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            backgroundColor: Colors.white),
                        child: const Text(
                          "Xem thêm",
                          style:
                              TextStyle(color: Styles.greenColor, fontSize: 10),
                        ),
                      ),
                    )))
        ],
      ),
    );
  }
}
