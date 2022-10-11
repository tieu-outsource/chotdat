import 'package:chotdat/widgets/my_button.dart';
import 'package:chotdat/widgets/my_button_outline.dart';
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
          IntrinsicHeight(
              child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 10, right: 10),
                child: Column(
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/bubble.png'),
                      radius: 55,
                      child: Text('5',
                          style: TextStyle(
                              fontSize: 53,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 10),
                    Text('Bất động sản', style: Styles.textOne)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 142,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Styles.yellowColor),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5))),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 2),
                                    child: const Text('1',
                                        style: TextStyle(
                                            color: Styles.yellowColor,
                                            fontSize: 12)),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text('Thổ cư', style: Styles.textOne)
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Styles.primaryColor),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5))),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 2),
                                    child: const Text('1',
                                        style: TextStyle(
                                            color: Styles.primaryColor,
                                            fontSize: 12)),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text('Chung cư', style: Styles.textOne)
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Styles.greenColor),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5))),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  child: const Text('2',
                                      style: TextStyle(
                                          color: Styles.greenColor,
                                          fontSize: 12)),
                                ),
                                const SizedBox(width: 5),
                                const Text('Cho thuê', style: Styles.textOne)
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Styles.blueColor),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5))),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  child: const Text('3',
                                      style: TextStyle(
                                          color: Styles.blueColor,
                                          fontSize: 12)),
                                ),
                                const SizedBox(width: 5),
                                const Text('Dự án', style: Styles.textOne)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 142,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Styles.greenColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 2),
                                    child: const Text('1',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white)),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text('Trống', style: Styles.textOne)
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Styles.yellowColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 2),
                                    child: const Text('1',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12)),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text('Thương lượng',
                                      style: Styles.textOne)
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Styles.primaryColor,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5))),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  child: const Text('2',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                ),
                                const SizedBox(width: 5),
                                const Text('Đặt cọc', style: Styles.textOne)
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Styles.primaryColor),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5))),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  child: const Text('3',
                                      style: TextStyle(
                                          color: Styles.primaryColor,
                                          fontSize: 12)),
                                ),
                                const SizedBox(width: 5),
                                const Text('Đóng', style: Styles.textOne)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyButton(text: "Thổ cử"),
              MyButtonOutline(text: "Chung cư"),
              MyButtonOutline(text: "Cho thuê"),
              MyButtonOutline(text: "Dự án"),
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
