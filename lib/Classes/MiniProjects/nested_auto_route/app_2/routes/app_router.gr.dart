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
import 'package:flutter/cupertino.dart' as _i9;
import 'package:flutter/material.dart' as _i8;

import '../../../persistent_tab_bar/persistent_tab_bar.dart' as _i4;
import '../../app_1/settings_page.dart' as _i5;
import '../dashboard/dashboard.dart' as _i3;
import '../dashboard/profile/profile_detail_page.dart' as _i6;
import '../home/home_detail_view.dart' as _i2;
import '../home/home_view.dart' as _i1;

class RouterE extends _i7.RootStackRouter {
  RouterE([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeView.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    HomeDetailView.name: (routeData) {
      final args = routeData.argsAs<HomeDetailViewArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.HomeDetailView(
          key: args.key,
          url: args.url,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ChatPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ProfilePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SettingsPage(),
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
          HomeView.name,
          path: '/',
        ),
        _i7.RouteConfig(
          HomeDetailView.name,
          path: 'Detail',
        ),
        _i7.RouteConfig(
          DashboardRoute.name,
          path: 'Dashboard',
          children: [
            _i7.RouteConfig(
              ChatRoute.name,
              path: 'Chat',
              parent: DashboardRoute.name,
            ),
            _i7.RouteConfig(
              ProfileRoute.name,
              path: 'Profile',
              parent: DashboardRoute.name,
              children: [
                _i7.RouteConfig(
                  ProfileDetailRoute.name,
                  path: 'ProfileDetail',
                  parent: ProfileRoute.name,
                )
              ],
            ),
            _i7.RouteConfig(
              SettingsRoute.name,
              path: 'Settings',
              parent: DashboardRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeView extends _i7.PageRouteInfo<void> {
  const HomeView()
      : super(
          HomeView.name,
          path: '/',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i2.HomeDetailView]
class HomeDetailView extends _i7.PageRouteInfo<HomeDetailViewArgs> {
  HomeDetailView({
    _i9.Key? key,
    required String url,
  }) : super(
          HomeDetailView.name,
          path: 'Detail',
          args: HomeDetailViewArgs(
            key: key,
            url: url,
          ),
        );

  static const String name = 'HomeDetailView';
}

class HomeDetailViewArgs {
  const HomeDetailViewArgs({
    this.key,
    required this.url,
  });

  final _i9.Key? key;

  final String url;

  @override
  String toString() {
    return 'HomeDetailViewArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: 'Dashboard',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i4.ChatPage]
class ChatRoute extends _i7.PageRouteInfo<void> {
  const ChatRoute()
      : super(
          ChatRoute.name,
          path: 'Chat',
        );

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          path: 'Profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i5.SettingsPage]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'Settings',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i6.ProfileDetailPage]
class ProfileDetailRoute extends _i7.PageRouteInfo<void> {
  const ProfileDetailRoute()
      : super(
          ProfileDetailRoute.name,
          path: 'ProfileDetail',
        );

  static const String name = 'ProfileDetailRoute';
}
