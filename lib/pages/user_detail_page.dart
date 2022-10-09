import 'package:chotdat/widgets/my_button.dart';
import 'package:chotdat/widgets/named_card.dart';
import 'package:chotdat/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../color.dart';
import '../widgets/sale_item.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [buildStorage()],
    );
  }

  Widget buildStorage() {
    return NamedCard(
      hasViewMore: true,
      title: 'Kho hàng',
      child: Column(
        children: [
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
              child: SearchBar()),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyButton(text: 'Thống kê'),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  height: 33,
                  width: 33,
                  child: GestureDetector(
                    child: Image.asset('images/create.png'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 200),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyButton(text: "Thổ cử"),
              MyButton(text: "Thổ cử"),
              MyButton(text: "Thổ cử"),
              MyButton(text: "Thổ cử"),
            ],
          ),
          Column(
            children: const [
              SizedBox(height: 20),
              SaleItem(color: Styles.greenColor, index: 1),
              SaleItem(color: Styles.primaryColor, index: 2),
              SaleItem(color: Colors.black, index: 3),
              SaleItem(color: Styles.yellowColor, index: 4),
            ],
          ),
        ],
      ),
    );
  }
}
