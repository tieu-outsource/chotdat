import 'package:chotdat/color.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  Widget buildList(BuildContext context) {
    return
        ListView.builder(
              padding: const EdgeInsets.only(left: 25, right: 25),
              itemCount: menuItems.length,
              itemBuilder: (BuildContext context, int index) => Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black54)),
                  ),
                  child: menuItems[index]
              )
        );
  }

  static const menuItems = <Widget>[
    ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: ImageIcon(AssetImage('images/icons/manage_org.png')),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      iconColor: Colors.black87,
      title: Text(
        "Quản lý tổ chức",
        style: TextStyle(fontSize: 16),
      ),
      textColor: Styles.textGrey,
    ),
    ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: ImageIcon(AssetImage('images/icons/closed_group.png')),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      iconColor: Colors.black87,
      title: Text(
        "Nhóm đã đóng",
        style: TextStyle(fontSize: 16),
      ),
      textColor: Styles.textGrey,
    ),
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
      leading: ImageIcon(AssetImage('images/icons/price_table.png')),
      trailing: Icon(Icons.arrow_forward_ios_sharp),
      iconColor: Colors.black87,
      title: Text(
        "Bảng giá dịch vụ",
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
        "Bảng giá dịch vụ",
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
        "Bảng giá dịch vụ",
        style: TextStyle(fontSize: 16),
      ),
      textColor: Styles.textGrey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Mở rộng", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
      ),
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35)),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: buildList(context),
        )
      ),
    );
  }
}
