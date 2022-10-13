import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:chotdat/color.dart';
import 'package:chotdat/pages/sale_detail_tabs/item_detail.dart';
import 'package:chotdat/pages/sale_detail_tabs/seller_detail.dart';
import 'package:flutter/material.dart';

class SaleDetailPage extends StatelessWidget {
  const SaleDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ButtonsTabBar(
                backgroundColor: Styles.primaryColor,
                unselectedBorderColor: Styles.primaryColor,
                borderWidth: 1,
                borderColor: Colors.transparent,
                radius: 10,
                unselectedBackgroundColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                unselectedLabelStyle: const TextStyle(
                    color: Color(0xff8e8e8e),
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
                labelStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
                tabs: const [
                  Tab(
                    text: '   Thông tin \nbất động sản',
                  ),
                  Tab(
                    text: "Thông tin \nngười bán",
                  ),
                  Tab(
                    text: "Thương lượng",
                  ),
                  Tab(
                    text: "Phân quyền",
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TabBarView(
                  children: [
                    SaleItemDetailTab(),
                    SellerDetailTab(),
                    Text('ok'),
                    Text('ok'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
