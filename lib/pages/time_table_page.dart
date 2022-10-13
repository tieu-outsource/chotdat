import 'package:chotdat/color.dart';
import 'package:chotdat/widgets/my_button.dart';
import 'package:flutter/material.dart';

class TimeTablePage extends StatelessWidget {
  const TimeTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                MyButton(text: 'Lịch hẹn săp diễn ra'),
              ],
            ),
          ),
          buildPlanRow(context),
          buildPlanRow(context),
          buildPlanRow(context),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Chốt giao dịch',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          buildPlanRow(context, color: Color(0xffFEBFCB)),
        ],
      ),
    );
  }

  Widget buildPlanRow(BuildContext context, {Color color = const Color(0xffDFDEFF)}) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                const Text('T6',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.black)),
                const SizedBox(height: 5),
                const Text('22',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black)),
                const SizedBox(height: 5),
                const Text('10 AM',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.black)),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Styles.strokeColor, width: 0.3)),
                  ),
                  child: const SizedBox(height: 10, width: 20),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: color),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Hẹn khách xem nhà',
                            style: TextStyle(
                                color: Styles.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 12)),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.black54,
                                  size: 18,
                                )),
                            const SizedBox(width: 8),
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.notifications_outlined,
                                  color: Colors.black54,
                                  size: 18,
                                )),
                            const SizedBox(width: 8),
                            GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.flag_outlined,
                                  color: Colors.black54,
                                  size: 18,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                        border:
                            Border(top: BorderSide(color: Color(0xffDACFDA)))),
                    child: const Text('Nguyễn Hoàng Linh',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
