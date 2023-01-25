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

import '../home_page.dart' as _i1;
import '../posts_page.dart' as _i4;
import '../settings_page.dart' as _i3;
import '../single_post_page.dart' as _i5;
import '../user_profile_page.dart' as _i7;
import '../users_page.dart' as _i6;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    PostsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    UsersRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SettingsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SettingsPage(),
      );
    },
    PostsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PostsPage(),
      );
    },
    SinglePostsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SinglePostsRouteArgs>(
          orElse: () =>
              SinglePostsRouteArgs(postId: pathParams.getInt('postId')));
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.SinglePostsPage(
          key: args.key,
          postId: args.postId,
        ),
      );
    },
    UsersRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.UsersPage(),
      );
    },
    UserProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserProfileRouteArgs>(
          orElse: () =>
              UserProfileRouteArgs(userId: pathParams.getInt('userId')));
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.UserProfilePage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              PostsRouter.name,
              path: 'posts',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(
                  PostsRoute.name,
                  path: '',
                  parent: PostsRouter.name,
                ),
                _i8.RouteConfig(
                  SinglePostsRoute.name,
                  path: ':postId',
                  parent: PostsRouter.name,
                ),
              ],
            ),
            _i8.RouteConfig(
              UsersRouter.name,
              path: 'users',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(
                  UsersRoute.name,
                  path: '',
                  parent: UsersRouter.name,
                ),
                _i8.RouteConfig(
                  UserProfileRoute.name,
                  path: ':userId',
                  parent: UsersRouter.name,
                ),
              ],
            ),
            _i8.RouteConfig(
              SettingsRouter.name,
              path: 'settings',
              parent: HomeRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PostsRouter extends _i8.PageRouteInfo<void> {
  const PostsRouter({List<_i8.PageRouteInfo>? children})
      : super(
          PostsRouter.name,
          path: 'posts',
          initialChildren: children,
        );

  static const String name = 'PostsRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class UsersRouter extends _i8.PageRouteInfo<void> {
  const UsersRouter({List<_i8.PageRouteInfo>? children})
      : super(
          UsersRouter.name,
          path: 'users',
          initialChildren: children,
        );

  static const String name = 'UsersRouter';
}

/// generated route for
/// [_i3.SettingsPage]
class SettingsRouter extends _i8.PageRouteInfo<void> {
  const SettingsRouter()
      : super(
          SettingsRouter.name,
          path: 'settings',
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i4.PostsPage]
class PostsRoute extends _i8.PageRouteInfo<void> {
  const PostsRoute()
      : super(
          PostsRoute.name,
          path: '',
        );

  static const String name = 'PostsRoute';
}

/// generated route for
/// [_i5.SinglePostsPage]
class SinglePostsRoute extends _i8.PageRouteInfo<SinglePostsRouteArgs> {
  SinglePostsRoute({
    _i9.Key? key,
    required int postId,
  }) : super(
          SinglePostsRoute.name,
          path: ':postId',
          args: SinglePostsRouteArgs(
            key: key,
            postId: postId,
          ),
          rawPathParams: {'postId': postId},
        );

  static const String name = 'SinglePostsRoute';
}

class SinglePostsRouteArgs {
  const SinglePostsRouteArgs({
    this.key,
    required this.postId,
  });

  final _i9.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostsRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i6.UsersPage]
class UsersRoute extends _i8.PageRouteInfo<void> {
  const UsersRoute()
      : super(
          UsersRoute.name,
          path: '',
        );

  static const String name = 'UsersRoute';
}

/// generated route for
/// [_i7.UserProfilePage]
class UserProfileRoute extends _i8.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    _i9.Key? key,
    required int userId,
  }) : super(
          UserProfileRoute.name,
          path: ':userId',
          args: UserProfileRouteArgs(
            key: key,
            userId: userId,
          ),
          rawPathParams: {'userId': userId},
        );

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({
    this.key,
    required this.userId,
  });

  final _i9.Key? key;

  final int userId;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, userId: $userId}';
  }
}
