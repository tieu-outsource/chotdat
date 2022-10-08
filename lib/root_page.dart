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
        HomeRoute(),
        ChatRoute(),
        NotificationRoute(),
        UserRoute(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          drawer: const MenuPage(),
          appBar: buildAppBar(context, tabsRouter),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: buildFloatingActionButton(context),
          bottomNavigationBar: buildBottomNavigationBar(context, tabsRouter),
          backgroundColor: Styles.primaryColor,
          body: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35)),
            child: Scaffold(
              backgroundColor: Colors.white,
              body: child,
            ),
          ),
        );
      },
    );
  }

  PreferredSizeWidget buildAppBar(BuildContext context, TabsRouter tabsRouter) {
    return AppBar(
      elevation: 0,
      // leading: IconButton(
      //   icon: const Icon(Icons.menu_rounded),
      //   onPressed: () {
      //     context.router.push(RootRoute(
      //       children: [MenuRoute()]
      //     ));
      //   }
      // ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Image.asset('images/logo.png'),
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
            padding:
            const EdgeInsets.only(bottom: 0),
            child: Image.asset('images/create.png'),
          ),
          onPressed: () {},
        ),
      ),
    );
  }


  Widget buildBottomNavigationBar(BuildContext context, TabsRouter tabsRouter) {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      shape: const CircleBorder(),
                      onPressed: () => tabsRouter.setActiveIndex(0),
                      color: tabsRouter.activeIndex == 0 ? Colors.white : null,
                      textColor: tabsRouter.activeIndex == 0
                          ? Styles.primaryColor
                          : Colors.white,
                      child: const Icon(Icons.home),
                    ),
                    MaterialButton(
                      shape: const CircleBorder(),
                      onPressed: () => tabsRouter.setActiveIndex(1),
                      color: tabsRouter.activeIndex == 1 ? Colors.white : null,
                      textColor: tabsRouter.activeIndex == 1
                          ? Styles.primaryColor
                          : Colors.white,
                      child: const Icon(Icons.message),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      shape: const CircleBorder(),
                      onPressed: () => tabsRouter.setActiveIndex(2),
                      color: tabsRouter.activeIndex == 2 ? Colors.white : null,
                      textColor: tabsRouter.activeIndex == 2
                          ? Styles.primaryColor
                          : Colors.white,
                      child: const Icon(Icons.notifications),
                    ),
                    MaterialButton(
                      shape: const CircleBorder(),
                      onPressed: () => tabsRouter.setActiveIndex(3),
                      color: tabsRouter.activeIndex == 3 ? Colors.white : null,
                      textColor: tabsRouter.activeIndex == 3
                          ? Styles.primaryColor
                          : Colors.white,
                      child: const Icon(Icons.person),
                    )
                  ],
                )
              ],
            )));
  }
}
