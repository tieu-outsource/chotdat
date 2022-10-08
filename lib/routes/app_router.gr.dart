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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../pages/chat_page.dart' as _i3;
import '../pages/home_page.dart' as _i2;
import '../pages/notification_page.dart' as _i4;
import '../pages/user_page.dart' as _i5;
import '../root_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    RootRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.RootPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ChatPage(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.NotificationPage(),
      );
    },
    UserRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.UserPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          RootRoute.name,
          path: '/',
          children: [
            _i6.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: RootRoute.name,
            ),
            _i6.RouteConfig(
              ChatRoute.name,
              path: 'chat',
              parent: RootRoute.name,
            ),
            _i6.RouteConfig(
              NotificationRoute.name,
              path: 'notification',
              parent: RootRoute.name,
            ),
            _i6.RouteConfig(
              UserRoute.name,
              path: 'user',
              parent: RootRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.RootPage]
class RootRoute extends _i6.PageRouteInfo<void> {
  const RootRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'RootRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.ChatPage]
class ChatRoute extends _i6.PageRouteInfo<void> {
  const ChatRoute()
      : super(
          ChatRoute.name,
          path: 'chat',
        );

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i4.NotificationPage]
class NotificationRoute extends _i6.PageRouteInfo<void> {
  const NotificationRoute()
      : super(
          NotificationRoute.name,
          path: 'notification',
        );

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i5.UserPage]
class UserRoute extends _i6.PageRouteInfo<void> {
  const UserRoute()
      : super(
          UserRoute.name,
          path: 'user',
        );

  static const String name = 'UserRoute';
}
