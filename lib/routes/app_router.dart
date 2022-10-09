import 'package:auto_route/annotations.dart';
import 'package:chotdat/pages/chat_page.dart';
import 'package:chotdat/pages/home_page.dart';
import 'package:chotdat/pages/notification_page.dart';
import 'package:chotdat/pages/user_detail_page.dart';
import 'package:chotdat/root_page.dart';
import 'package:chotdat/pages/user_page.dart';

import 'empty_router_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: "/", page: RootPage, initial: true, children: [
      AutoRoute(
        path: 'home',
        name: 'HomeRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: HomePage
          ),
          AutoRoute(
            path: 'user-detail',
            page: UserDetailPage
          )
        ]
      ),
      AutoRoute(
        path: 'chat',
        page: ChatPage,
      ),
      AutoRoute(
        path: 'notification',
        page: NotificationPage,
      ),
      AutoRoute(
        path: 'user',
        page: UserPage,
      ),
      AutoRoute(
        path: 'user-detail',
        page: UserDetailPage
      )
    ]),
  ],
)
class $AppRouter {}
