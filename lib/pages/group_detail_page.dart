import 'package:chotdat/widgets/my_button.dart';
import 'package:chotdat/widgets/my_button_outline.dart';
import 'package:chotdat/widgets/named_card.dart';
import 'package:chotdat/widgets/search_bar.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:flutter/material.dart';

import '../color.dart';
import '../widgets/my_datepicker.dart';
import '../widgets/plan_item.dart';
import '../widgets/sale_item.dart';

class GroupDetailPage extends StatelessWidget {
  const GroupDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          buildTools(context),
          buildStorage(context),
          buildNewsUpdate(context),
          buildNewsBuy(context),
          buildNotifications(context),
          buildPlans(context),
          buildResult(),
          SizedBox(height: 100)
        ],
      ),
    );
  }

  Widget buildTools(BuildContext context) {
    return NamedCard(
      title: "Công cụ hỗ trợ",
      badge: "6",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Styles.violetColor, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(22),
                  child: Image.asset('images/contacts.png'),
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                Text('Danh bạ thành viên',
                    textAlign: TextAlign.center, style: Styles.textTwo())
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Styles.violetColor, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(22),
                  child:
                      Image.asset('images/timetable.png', color: Colors.white),
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                Text('Lịch làm việc',
                    textAlign: TextAlign.center, style: Styles.textTwo())
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Styles.violetColor, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(22),
                  child: Image.asset('images/bubble-chat.png',
                      color: Colors.white),
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                Text('Chat nhóm',
                    textAlign: TextAlign.center, style: Styles.textTwo())
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Styles.violetColor, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(22),
                  child: Image.asset('images/shield.png', color: Colors.white),
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                Text('Chính sách nội quy',
                    textAlign: TextAlign.center, style: Styles.textTwo())
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Styles.violetColor, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(22),
                  child:
                      Image.asset('images/timetable.png', color: Colors.white),
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                Text('Thư viện tài liệu',
                    textAlign: TextAlign.center, style: Styles.textTwo())
              ],
            ),
          ),
        ],
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
              MyButtonOutline(
                text: "Thổ cử",
                width: MediaQuery.of(context).size.width / 5,
                color: Styles.yellowColor,
              ),
              MyButtonOutline(
                  text: "Chung cư",
                  width: MediaQuery.of(context).size.width / 5,
                  color: Styles.primaryColor),
              MyButtonOutline(
                  text: "Cho thuê",
                  width: MediaQuery.of(context).size.width / 5,
                  color: Styles.greenColor),
              MyButtonOutline(
                  text: "Dự án",
                  width: MediaQuery.of(context).size.width / 5,
                  color: Styles.blueColor),
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

  Widget buildNewsUpdate(BuildContext context) {
    return NamedCard(
        title: 'Tin BĐS cập nhật',
        child: Column(
          children: const [
            SaleItem(color: Styles.greenColor, index: 1),
            SaleItem(color: Colors.black, index: 2),
            SaleItem(color: Styles.yellowColor, index: 3),
          ],
        ));
  }

  Widget buildNewsBuy(BuildContext context) {
    return NamedCard(
        title: 'Tin cần mua',
        child: Column(
          children: const [
            SaleItem(color: Styles.greenColor, index: 1),
            SaleItem(color: Colors.black, index: 2),
            SaleItem(color: Styles.yellowColor, index: 3),
          ],
        ));
  }

  Widget buildNotifications(BuildContext context) {
    return NamedCard(
        title: 'Thông báo',
        child: Padding(
          padding: const EdgeInsets.only(left: 3, right: 3),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 13),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Styles.strokeColor),
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                child: const Text('Chốt cọc số 1 Đỗ Quang'),
              ),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                margin: const EdgeInsets.only(bottom: 13),
                decoration: BoxDecoration(
                    border: Border.all(color: Styles.strokeColor),
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                child: const Text('Chốt cọc số 1 Đỗ Quang'),
              ),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                margin: const EdgeInsets.only(bottom: 13),
                decoration: BoxDecoration(
                    border: Border.all(color: Styles.strokeColor),
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                child: const Text('Chốt cọc số 1 Đỗ Quang'),
              ),
            ],
          ),
        ));
  }

  Widget buildPlans(BuildContext context) {
    return NamedCard(
        title: 'Lịch làm việc',
        badge: '8',
        hasViewMore: true,
        child: Column(
          children: const [
            PlanItem(),
            PlanItem(),
            PlanItem(),
          ],
        ));
  }

  Widget buildResult() {
    return NamedCard(
        title: 'Kết quả làm việc',
        child: Column(
          children: [
            SizedBox(
                width: 320,
                height: 30,
                child: MyDropdownDatePicker(
                  textStyle: TextStyle(fontSize: 14),
                  inputDecoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Styles.yellowColor, width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Styles.yellowColor, width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Styles.yellowColor, width: 1.0),
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
