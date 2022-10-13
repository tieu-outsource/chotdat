import 'package:chotdat/color.dart';
import 'package:chotdat/widgets/my_button.dart';
import 'package:flutter/material.dart';

class TimeTablePage extends StatelessWidget {
  const TimeTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Row(
            children: [
              MyButton(text: 'Lịch săp diễn ra'),
            ],
          ),
        ),
        Row(
          children: [
            Column(
              children: const [
                Text('ab'),
                Text('bbb'),
                Text('ccccc'),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffDFDEFF)
              ),
              child: Column(
                children: const [
                  Text('Hẹn khách xem nhà',
                      style: TextStyle(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
