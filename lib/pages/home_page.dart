import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:chotdat/widgets/named_card.dart';
import 'package:chotdat/widgets/plan_item.dart';
import 'package:chotdat/widgets/sale_item.dart';
import 'package:chotdat/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color.dart';
import '../routes/app_router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 15, left: 15, top: 5, bottom: 10),
          child: SearchBar()
        ),
        buildStorage(context),
        buildTools(context),
        buildPlans(context),
        buildSales(context),
        const SizedBox(height: 100)
      ],
    );
  }

  Widget buildStorage(BuildContext context) {
    return NamedCard(
      title: "Kho hàng",
      badge: "10",
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              context.navigateTo(const UserDetailRoute());
            },
            child: Column(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('images/me.png'),
                  radius: 40,
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text('Của tôi')
              ],
            ),
          ),
          Column(
            children: [
              Badge(
                badgeContent: Text('3',
                    style:
                        GoogleFonts.ubuntu(fontSize: 16, color: Colors.white)),
                position: BadgePosition.topEnd(end: 4),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('images/group.png'),
                  radius: 40,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text('Nhóm 1')
            ],
          ),
          Column(
            children: [
              Badge(
                badgeContent: Text('3',
                    style:
                        GoogleFonts.ubuntu(fontSize: 16, color: Colors.white)),
                position: BadgePosition.topEnd(end: 4),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('images/group.png'),
                  radius: 40,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text('Nhóm 2')
            ],
          ),
          Column(
            children: [
              Badge(
                badgeContent: Text('3',
                    style:
                        GoogleFonts.ubuntu(fontSize: 16, color: Colors.white)),
                position: BadgePosition.topEnd(end: 4),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('images/group.png'),
                  radius: 40,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text('Nhóm 3')
            ],
          ),
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
        children: [
          Column(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Styles.violetColor),
                child: Image.asset('images/growth.png'),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text('Lịch làm việc')
            ],
          ),
          Column(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Styles.violetColor),
                child: Image.asset('images/treasure-map.png'),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text('Quy hoạch')
            ],
          ),
          Column(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Styles.violetColor),
                child: Image.asset('images/auction.png'),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text('So sánh giá')
            ],
          ),
          Column(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Styles.violetColor),
                child: Image.asset('images/house.png'),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text('Website')
            ],
          ),
        ],
      ),
    );
  }

  Widget buildPlans(BuildContext context) {
    return NamedCard(
        title: 'Lịch làm việc',
        badge: '8',
        hasViewMore: true,
        child: Column(
          children: [
            PlanItem(),
            PlanItem(),
            PlanItem(),
          ],
        ));
  }

  Widget buildSales(BuildContext context) {
    return NamedCard(
        title: 'Chốt giao dịch',
        badge: '5',
        hasViewMore: true,
        child: Column(
          children: const [
            SaleItem(color: Styles.greenColor, index: 1),
            SaleItem(color: Colors.black, index: 2),
            SaleItem(color: Styles.yellowColor, index: 3),
          ],
        ));
  }
}
