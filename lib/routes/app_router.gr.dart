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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i9;

import '../pages/chat_page.dart' as _i3;
import '../pages/home_page.dart' as _i7;
import '../pages/notification_page.dart' as _i4;
import '../pages/user_detail_page.dart' as _i6;
import '../pages/user_page.dart' as _i5;
import '../root_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    RootRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.RootPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ChatPage(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.NotificationPage(),
      );
    },
    UserRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.UserPage(),
      );
    },
    UserDetailRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.UserDetailPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.HomePage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          RootRoute.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: RootRoute.name,
              children: [
                _i8.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i8.RouteConfig(
                  UserDetailRoute.name,
                  path: 'user-detail',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            _i8.RouteConfig(
              ChatRoute.name,
              path: 'chat',
              parent: RootRoute.name,
            ),
            _i8.RouteConfig(
              NotificationRoute.name,
              path: 'notification',
              parent: RootRoute.name,
            ),
            _i8.RouteConfig(
              UserRoute.name,
              path: 'user',
              parent: RootRoute.name,
            ),
            _i8.RouteConfig(
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
class RootRoute extends _i8.PageRouteInfo<void> {
  const RootRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'RootRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.ChatPage]
class ChatRoute extends _i8.PageRouteInfo<void> {
  const ChatRoute()
      : super(
          ChatRoute.name,
          path: 'chat',
        );

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i4.NotificationPage]
class NotificationRoute extends _i8.PageRouteInfo<void> {
  const NotificationRoute()
      : super(
          NotificationRoute.name,
          path: 'notification',
        );

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i5.UserPage]
class UserRoute extends _i8.PageRouteInfo<void> {
  const UserRoute()
      : super(
          UserRoute.name,
          path: 'user',
        );

  static const String name = 'UserRoute';
}

/// generated route for
/// [_i6.UserDetailPage]
class UserDetailRoute extends _i8.PageRouteInfo<void> {
  const UserDetailRoute()
      : super(
          UserDetailRoute.name,
          path: 'user-detail',
        );

  static const String name = 'UserDetailRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}
