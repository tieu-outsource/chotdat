import 'package:auto_route/auto_route.dart';
import 'package:chotdat/pages/menu_page.dart';
import 'package:chotdat/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

import 'color.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: const [
          HomeRouter(),
          ChatRoute(),
          NotificationRoute(),
          AccountRoute(),
        ],
        builder: (context, child, animation) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
              drawer: const MenuPage(),
              appBar: buildAppBar(context, tabsRouter),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: buildFloatingActionButton(context),
              bottomNavigationBar:
                  buildBottomNavigationBar(context, tabsRouter),
              backgroundColor: Colors.white,
              body: Scaffold(
                  backgroundColor: Styles.primaryColor,
                  body: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35)),
                      child: Scaffold(
                        backgroundColor: Colors.white,
                        body: FadeTransition(
                          opacity: animation,
                          child: child,
                        ),
                      ))));
        });
  }

  PreferredSizeWidget buildAppBar(BuildContext context, TabsRouter tabsRouter) {
    return AppBar(
      centerTitle: true,
      leading: const AutoLeadingButton(),
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: buildAppTitle(context),
      ),
    );
  }

  Widget buildFloatingActionButton(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Image.asset('images/create.png'),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget buildBottomNavigationBar(BuildContext context, TabsRouter tabsRouter) {
    double iconWidth = MediaQuery.of(context).size.width / 5;
    return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        color: Styles.primaryColor,
        child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: iconWidth,
                      child: MaterialButton(
                        shape: const CircleBorder(),
                        onPressed: () => tabsRouter.setActiveIndex(0),
                        color: tabsRouter.activeIndex == 0 ? Colors.white : null,
                        textColor: tabsRouter.activeIndex == 0
                            ? Styles.primaryColor
                            : Colors.white,
                        child: const Icon(Icons.home),
                      ),
                    ),
                    SizedBox(
                      width: iconWidth,
                      child: MaterialButton(
                        shape: const CircleBorder(),
                        onPressed: () => tabsRouter.setActiveIndex(1),
                        color: tabsRouter.activeIndex == 1 ? Colors.white : null,
                        textColor: tabsRouter.activeIndex == 1
                            ? Styles.primaryColor
                            : Colors.white,
                        child: const Icon(Icons.message),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: iconWidth,
                      child: MaterialButton(
                        shape: const CircleBorder(),
                        onPressed: () => tabsRouter.setActiveIndex(2),
                        color: tabsRouter.activeIndex == 2 ? Colors.white : null,
                        textColor: tabsRouter.activeIndex == 2
                            ? Styles.primaryColor
                            : Colors.white,
                        child: const Icon(Icons.notifications),
                      ),
                    ),
                    SizedBox(
                      width: iconWidth,
                      child: MaterialButton(
                        shape: const CircleBorder(),
                        onPressed: () => tabsRouter.setActiveIndex(3),
                        color: tabsRouter.activeIndex == 3 ? Colors.white : null,
                        textColor: tabsRouter.activeIndex == 3
                            ? Styles.primaryColor
                            : Colors.white,
                        child: const Icon(Icons.person),
                      ),
                    )
                  ],
                )
              ],
            )));
  }

  Widget buildAppTitle(BuildContext context) {
    switch (context.topRoute.path) {
      case '':
      case 'sale-detail':
      case 'time-table':
      case 'compare-price':
        return Image.asset('images/logo.png', width: 171, height: 34);
      case 'user-detail':
        return const Text(
          '????? B???o L??m Anh',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        );
      case 'group-detail':
        {
          return Transform.translate(
            offset: Offset(-20, 5),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 17,
                  backgroundImage: AssetImage('images/group.png'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Nh?? ph??? - Ph??ng s??? 7',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'C??ng khai - 5 th??nh vi??n',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          );
        }
      default:
        {
          return Image.asset('images/logo.png', width: 171, height: 34);
        }
    }
  }
}
