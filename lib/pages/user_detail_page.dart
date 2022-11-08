import 'package:chotdat/widgets/my_button.dart';
import 'package:chotdat/widgets/my_button_outline.dart';
import 'package:chotdat/widgets/named_card.dart';
import 'package:chotdat/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../color.dart';
import '../widgets/my_datepicker.dart';
import '../widgets/sale_item.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [buildStorage(context), buildResult(), SizedBox(height: 100)],
      ),
    );
  }

  Widget buildStorage(BuildContext context) {
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
                padding: const EdgeInsets.only(right: 0),
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
          const SizedBox(height: 10),
          IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 0, right: 10),
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('images/bubble.png'),
                      radius: 55,
                      child: Text('5',
                          style: TextStyle(
                              fontSize: 53,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 10),
                    Text('Bất động sản', style: Styles.textOne())
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
                          width: MediaQuery.of(context).size.width / 3,
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
                                  Text('Thổ cư', style: Styles.textOne())
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
                                  Text('Chung cư', style: Styles.textOne())
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5),
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
                                Text('Cho thuê', style: Styles.textOne())
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
                                Text('Dự án', style: Styles.textOne())
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
                          width: MediaQuery.of(context).size.width / 3,
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
                                  Text('Trống', style: Styles.textOne())
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
                                  Text('Thương lượng', style: Styles.textOne())
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Styles.primaryColor,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  child: const Text('2',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                ),
                                const SizedBox(width: 5),
                                Text('Đặt cọc', style: Styles.textOne())
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
                                Text('Đóng', style: Styles.textOne())
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
              MyButton(text: "Thổ cử", width: MediaQuery.of(context).size.width / 5),
              MyButtonOutline(text: "Chung cư", width: MediaQuery.of(context).size.width / 5),
              MyButtonOutline(text: "Cho thuê", width: MediaQuery.of(context).size.width / 5),
              MyButtonOutline(text: "Dự án", width: MediaQuery.of(context).size.width / 5),
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

  Widget buildResult() {
    return NamedCard(
        title: 'Kết quả làm việc',
        child: Column(
          children: [
            SizedBox(
                width: 350,
                height: 30,
                child: MyDropdownDatePicker(
                  textStyle: TextStyle(fontSize: 14),
                  inputDecoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Styles.yellowColor, width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Styles.yellowColor, width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Styles.yellowColor, width: 1.0),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  isDropdownHideUnderline: true,
                  isFormValidator: true,
                  startYear: 1900,
                  endYear: 2022,
                  width: 10,
                  selectedDay: 14,
                  selectedMonth: 10,
                  selectedYear: 2022,
                  onChangedDay: (value) => print('onChangedDay: $value'),
                  onChangedMonth: (value) => print('onChangedMonth: $value'),
                  onChangedYear: (value) => print('onChangedYear: $value'),
                  showDay: false,
                  locale: 'vi_VN',
                )),
            const SizedBox(height: 30),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Lượt dẫn khách xem BĐS'),
                    Text('22',
                        style: TextStyle(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.bold))
                  ],
                )),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('BĐS chốt đơn thành công'),
                    Text('22',
                        style: TextStyle(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.bold))
                  ],
                )),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Số tiền BĐS chốt đơn thành công:'),
                    Text('22',
                        style: TextStyle(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.bold))
                  ],
                )),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Số tiền hoa hồng được hưởng:'),
                    Text('22.234.000.000',
                        style: TextStyle(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.bold))
                  ],
                )),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Số tiền chênh lệch được hưởng:'),
                    Text('1.203.000.000',
                        style: TextStyle(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.bold))
                  ],
                )),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Số tiền chi để thực hiện giao dịch:'),
                    Text('234.000.000',
                        style: TextStyle(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.bold))
                  ],
                )),
          ],
        ));
  }
}
