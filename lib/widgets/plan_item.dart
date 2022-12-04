import 'package:flutter/material.dart';

import '../color.dart';

class PlanItem extends StatelessWidget {
  const PlanItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Styles.strokeColor),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Hoàng văn khánh",
                      style: TextStyle(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text("Nhà 5 50m2 phố Đỗ Quang",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text("13:20 25/05/2002",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text("0899238493"),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.location_on_outlined,
                              color: Colors.black54)),
                      const SizedBox(width: 8),
                      GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.notifications_outlined,
                              color: Colors.black54)),
                      const SizedBox(width: 8),
                      GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.flag_outlined,
                              color: Colors.black54)),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
