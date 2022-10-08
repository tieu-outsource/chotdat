// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/annotations.dart';
import 'package:chotdat/pages/chat_page.dart';
import 'package:chotdat/pages/home_page.dart';
import 'package:chotdat/pages/notification_page.dart';
import 'package:chotdat/root_page.dart';
import 'package:chotdat/pages/menu_page.dart';
import 'package:chotdat/pages/user_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: "/", page: RootPage, initial: true, children: [
      AutoRoute(
        path: 'home',
        page: HomePage,
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
    ]),
  ],
)
class $AppRouter {}
