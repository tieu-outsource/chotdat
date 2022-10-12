import 'dart:ffi';

import 'package:chotdat/color.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  static const accountItems = <Widget>[
    ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: ImageIcon(AssetImage('images/icons/user.png'), color: Styles.strokeColor),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      iconColor: Colors.black87,
      title: Text(
        "Thông tin tài khoản",
        style: TextStyle(fontSize: 16),
      ),
      textColor: Styles.textGrey,
    ),
  ];

  static const tradeItems = <Widget>[
    ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: ImageIcon(AssetImage('images/icons/money.png')),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      iconColor: Colors.black87,
      title: Text(
        "Nạp tiền",
        style: TextStyle(fontSize: 16),
      ),
      textColor: Styles.textGrey,
    ),
    ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: ImageIcon(AssetImage('images/icons/wallet.png')),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      iconColor: Colors.black87,
      title: Text(
        "Số dư tài khoản",
        style: TextStyle(fontSize: 16),
      ),
      textColor: Styles.textGrey,
    ),
    ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: ImageIcon(AssetImage('images/icons/history.png')),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      iconColor: Colors.black87,
      title: Text(
        "Lịch sử giao dịch",
        style: TextStyle(fontSize: 16),
      ),
      textColor: Styles.textGrey,
    ),
    ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: ImageIcon(AssetImage('images/icons/order-delivery.png')),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      iconColor: Colors.black87,
      title: Text(
        "Bảng giá dịch vụ",
        style: TextStyle(fontSize: 16),
      ),
      textColor: Styles.textGrey,
    ),
  ];

  static const manageAccountItems = <Widget>[
    ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: ImageIcon(AssetImage('images/icons/setting.png')),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      iconColor: Colors.black87,
      title: Text(
        "Cài đặt tài khoản",
        style: TextStyle(fontSize: 16),
      ),
      textColor: Styles.textGrey,
    ),
    ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: ImageIcon(AssetImage('images/icons/balance.png')),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      iconColor: Colors.black87,
      title: Text(
        "Pháp lý",
        style: TextStyle(fontSize: 16),
      ),
      textColor: Styles.textGrey,
    ),
    ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: ImageIcon(AssetImage('images/icons/logout.png')),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      iconColor: Colors.black87,
      title: Text(
        "Đăng xuất",
        style: TextStyle(fontSize: 16),
      ),
      textColor: Styles.textGrey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              const CircleAvatar(
                foregroundImage: AssetImage('images/me.png'),
                radius: 29,
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Đào Anh Tuấn', style: Styles.headlineOne()),
                  const SizedBox(height: 5),
                  Text('0337989402', style: Styles.textOne())
                ],
              )
            ],
          ),
          buildTitle(context, "Tài khoản"),
          buildList(context, accountItems),
          buildTitle(context, "Quản lý giao dịch"),
          buildList(context, tradeItems),
          buildTitle(context, "Quản lý tài khoản"),
          buildList(context, manageAccountItems),
          SizedBox(height: 50)
        ],
      ),
    );
  }

  Widget buildList(BuildContext context, List<Widget> items) {
    return SizedBox(
        height: items.length * 55,
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) => Container(
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black54)),
                ),
                child: items[index])));
  }

  Widget buildTitle(BuildContext context, String title) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 65,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Styles.primaryColor)),
      ),
      child: Text(title, style: Styles.headlineOne()),
    );
  }
}
