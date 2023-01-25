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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i3;
import 'package:flutter/material.dart' as _i8;

import '../dashboard/chat/chat.dart' as _i2;
import '../dashboard/dashboard.dart' as _i1;
import '../dashboard/profile/profile.dart' as _i5;
import '../dashboard/profile/profile_detail_page.dart' as _i6;
import '../dashboard/settings/settings.dart' as _i4;

class RouterE extends _i7.RootStackRouter {
  RouterE([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    ChatRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ChatPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    SettingsRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SettingsPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfilePage(),
      );
    },
    ProfileDetailRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProfileDetailPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          DashboardRoute.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              ChatRouter.name,
              path: 'chat',
              parent: DashboardRoute.name,
            ),
            _i7.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: DashboardRoute.name,
              children: [
                _i7.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                _i7.RouteConfig(
                  ProfileDetailRoute.name,
                  path: ':profileId',
                  parent: ProfileRouter.name,
                ),
              ],
            ),
            _i7.RouteConfig(
              SettingsRouter.name,
              path: 'settings',
              parent: DashboardRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i2.ChatPage]
class ChatRouter extends _i7.PageRouteInfo<void> {
  const ChatRouter()
      : super(
          ChatRouter.name,
          path: 'chat',
        );

  static const String name = 'ChatRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRouter extends _i7.PageRouteInfo<void> {
  const SettingsRouter()
      : super(
          SettingsRouter.name,
          path: 'settings',
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i6.ProfileDetailPage]
class ProfileDetailRoute extends _i7.PageRouteInfo<void> {
  const ProfileDetailRoute()
      : super(
          ProfileDetailRoute.name,
          path: ':profileId',
        );

  static const String name = 'ProfileDetailRoute';
}
