import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:chotdat/pages/chat_page.dart';
import 'package:chotdat/pages/group_detail_page.dart';
import 'package:chotdat/pages/home_page.dart';
import 'package:chotdat/pages/notification_page.dart';
import 'package:chotdat/pages/sale_detail.dart';
import 'package:chotdat/pages/time_table_page.dart';
import 'package:chotdat/pages/user_detail_page.dart';
import 'package:chotdat/root_page.dart';
import 'package:chotdat/pages/account_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: "/", page: RootPage, initial: true, children: [
      AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: HomePage),
            AutoRoute(path: 'user-detail', page: UserDetailPage),
            AutoRoute(path: 'group-detail', page: GroupDetailPage),
            AutoRoute(path: 'sale-detail', page: SaleDetailPage),
            AutoRoute(path: 'time-table', page: TimeTablePage),
          ]),
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
        page: AccountPage,
      ),
      AutoRoute(path: 'user-detail', page: UserDetailPage)
    ]),
  ],
)
class $AppRouter {}
