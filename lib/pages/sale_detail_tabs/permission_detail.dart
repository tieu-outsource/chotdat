import 'package:chotdat/color.dart';
import 'package:chotdat/widgets/named_card.dart';
import 'package:flutter/material.dart';

class PermissionDetailTab extends StatelessWidget {
  const PermissionDetailTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          NamedCard(
              title: 'Phân quyền',
              titleWidth: 210,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                child: Column(
                  children: [
                  ],
                ),
              )),
          SizedBox(height: 50)
        ],
      ),
    );
  }

  Widget detailItem(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 12)),
          Text(value,
              style: const TextStyle(fontSize: 12, color: Styles.primaryColor)),
        ],
      ),
    );
  }
}
