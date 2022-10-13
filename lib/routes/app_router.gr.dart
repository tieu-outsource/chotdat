// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i13;

import '../pages/account_page.dart' as _i5;
import '../pages/chat_page.dart' as _i3;
import '../pages/compare_price_page.dart' as _i11;
import '../pages/group_detail_page.dart' as _i8;
import '../pages/home_page.dart' as _i7;
import '../pages/notification_page.dart' as _i4;
import '../pages/sale_detail.dart' as _i9;
import '../pages/time_table_page.dart' as _i10;
import '../pages/user_detail_page.dart' as _i6;
import '../root_page.dart' as _i1;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    RootRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.RootPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ChatPage(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.NotificationPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.AccountPage(),
      );
    },
    UserDetailRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.UserDetailPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.HomePage(),
      );
    },
    GroupDetailRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.GroupDetailPage(),
      );
    },
    SaleDetailRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.SaleDetailPage(),
      );
    },
    TimeTableRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.TimeTablePage(),
      );
    },
    ComparePriceRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.ComparePricePage(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          RootRoute.name,
          path: '/',
          children: [
            _i12.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: RootRoute.name,
              children: [
                _i12.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  UserDetailRoute.name,
                  path: 'user-detail',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  GroupDetailRoute.name,
                  path: 'group-detail',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  SaleDetailRoute.name,
                  path: 'sale-detail',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  TimeTableRoute.name,
                  path: 'time-table',
                  parent: HomeRouter.name,
                ),
                _i12.RouteConfig(
                  ComparePriceRoute.name,
                  path: 'compare-price',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              ChatRoute.name,
              path: 'chat',
              parent: RootRoute.name,
            ),
            _i12.RouteConfig(
              NotificationRoute.name,
              path: 'notification',
              parent: RootRoute.name,
            ),
            _i12.RouteConfig(
              AccountRoute.name,
              path: 'user',
              parent: RootRoute.name,
            ),
            _i12.RouteConfig(
              UserDetailRoute.name,
              path: 'user-detail',
              parent: RootRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.RootPage]
class RootRoute extends _i12.PageRouteInfo<void> {
  const RootRoute({List<_i12.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'RootRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i12.PageRouteInfo<void> {
  const HomeRouter({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.ChatPage]
class ChatRoute extends _i12.PageRouteInfo<void> {
  const ChatRoute()
      : super(
          ChatRoute.name,
          path: 'chat',
        );

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i4.NotificationPage]
class NotificationRoute extends _i12.PageRouteInfo<void> {
  const NotificationRoute()
      : super(
          NotificationRoute.name,
          path: 'notification',
        );

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i5.AccountPage]
class AccountRoute extends _i12.PageRouteInfo<void> {
  const AccountRoute()
      : super(
          AccountRoute.name,
          path: 'user',
        );

  static const String name = 'AccountRoute';
}

/// generated route for
/// [_i6.UserDetailPage]
class UserDetailRoute extends _i12.PageRouteInfo<void> {
  const UserDetailRoute()
      : super(
          UserDetailRoute.name,
          path: 'user-detail',
        );

  static const String name = 'UserDetailRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i8.GroupDetailPage]
class GroupDetailRoute extends _i12.PageRouteInfo<void> {
  const GroupDetailRoute()
      : super(
          GroupDetailRoute.name,
          path: 'group-detail',
        );

  static const String name = 'GroupDetailRoute';
}

/// generated route for
/// [_i9.SaleDetailPage]
class SaleDetailRoute extends _i12.PageRouteInfo<void> {
  const SaleDetailRoute()
      : super(
          SaleDetailRoute.name,
          path: 'sale-detail',
        );

  static const String name = 'SaleDetailRoute';
}

/// generated route for
/// [_i10.TimeTablePage]
class TimeTableRoute extends _i12.PageRouteInfo<void> {
  const TimeTableRoute()
      : super(
          TimeTableRoute.name,
          path: 'time-table',
        );

  static const String name = 'TimeTableRoute';
}

/// generated route for
/// [_i11.ComparePricePage]
class ComparePriceRoute extends _i12.PageRouteInfo<void> {
  const ComparePriceRoute()
      : super(
          ComparePriceRoute.name,
          path: 'compare-price',
        );

  static const String name = 'ComparePriceRoute';
}
