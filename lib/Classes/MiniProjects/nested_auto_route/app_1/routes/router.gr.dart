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
import 'package:auto_route/empty_router_widgets.dart' as _i5;
import 'package:flutter/material.dart' as _i13;

import '../home_page.dart' as _i4;
import '../posts_page.dart' as _i7;
import '../settings_page.dart' as _i6;
import '../signup_page_1.dart' as _i2;
import '../signup_page_2.dart' as _i3;
import '../single_post_page.dart' as _i8;
import '../start_page.dart' as _i1;
import '../user_info.dart' as _i10;
import '../user_profile_page.dart' as _i11;
import '../users_page.dart' as _i9;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    StartRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.StartPage(),
      );
    },
    SignupRoute1.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignupPage1(),
      );
    },
    SignupRouterTwo.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignupPage2(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    PostsRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    UsersRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EmptyRouterPage(),
      );
    },
    SettingsRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SettingsPage(),
      );
    },
    PostsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.PostsPage(),
      );
    },
    SinglePostsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SinglePostsRouteArgs>(
          orElse: () =>
              SinglePostsRouteArgs(postId: pathParams.getInt('postId')));
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.SinglePostsPage(
          key: args.key,
          postId: args.postId,
        ),
      );
    },
    UsersRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.UsersPage(),
      );
    },
    UserInfoRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.UserInfoPage(),
      );
    },
    UserProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserProfileRouteArgs>(
          orElse: () =>
              UserProfileRouteArgs(userId: pathParams.getInt('userId')));
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.UserProfilePage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'start',
          fullMatch: true,
        ),
        _i12.RouteConfig(
          StartRouter.name,
          path: 'start',
        ),
        _i12.RouteConfig(
          SignupRoute1.name,
          path: '/signup',
        ),
        _i12.RouteConfig(
          SignupRouterTwo.name,
          path: 'signupChild2',
        ),
        _i12.RouteConfig(
          HomeRoute.name,
          path: '/post',
          children: [
            _i12.RouteConfig(
              PostsRouter.name,
              path: 'posts',
              parent: HomeRoute.name,
              children: [
                _i12.RouteConfig(
                  PostsRoute.name,
                  path: '',
                  parent: PostsRouter.name,
                ),
                _i12.RouteConfig(
                  SinglePostsRoute.name,
                  path: ':postId',
                  parent: PostsRouter.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              UsersRouter.name,
              path: 'users',
              parent: HomeRoute.name,
              children: [
                _i12.RouteConfig(
                  UsersRoute.name,
                  path: '',
                  parent: UsersRouter.name,
                ),
                _i12.RouteConfig(
                  UserInfoRoute.name,
                  path: 'userInfo',
                  parent: UsersRouter.name,
                ),
                _i12.RouteConfig(
                  UserProfileRoute.name,
                  path: ':userId',
                  parent: UsersRouter.name,
                ),
              ],
            ),
            _i12.RouteConfig(
              SettingsRouter.name,
              path: 'settings',
              parent: HomeRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.StartPage]
class StartRouter extends _i12.PageRouteInfo<void> {
  const StartRouter()
      : super(
          StartRouter.name,
          path: 'start',
        );

  static const String name = 'StartRouter';
}

/// generated route for
/// [_i2.SignupPage1]
class SignupRoute1 extends _i12.PageRouteInfo<void> {
  const SignupRoute1()
      : super(
          SignupRoute1.name,
          path: '/signup',
        );

  static const String name = 'SignupRoute1';
}

/// generated route for
/// [_i3.SignupPage2]
class SignupRouterTwo extends _i12.PageRouteInfo<void> {
  const SignupRouterTwo()
      : super(
          SignupRouterTwo.name,
          path: 'signupChild2',
        );

  static const String name = 'SignupRouterTwo';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/post',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class PostsRouter extends _i12.PageRouteInfo<void> {
  const PostsRouter({List<_i12.PageRouteInfo>? children})
      : super(
          PostsRouter.name,
          path: 'posts',
          initialChildren: children,
        );

  static const String name = 'PostsRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class UsersRouter extends _i12.PageRouteInfo<void> {
  const UsersRouter({List<_i12.PageRouteInfo>? children})
      : super(
          UsersRouter.name,
          path: 'users',
          initialChildren: children,
        );

  static const String name = 'UsersRouter';
}

/// generated route for
/// [_i6.SettingsPage]
class SettingsRouter extends _i12.PageRouteInfo<void> {
  const SettingsRouter()
      : super(
          SettingsRouter.name,
          path: 'settings',
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i7.PostsPage]
class PostsRoute extends _i12.PageRouteInfo<void> {
  const PostsRoute()
      : super(
          PostsRoute.name,
          path: '',
        );

  static const String name = 'PostsRoute';
}

/// generated route for
/// [_i8.SinglePostsPage]
class SinglePostsRoute extends _i12.PageRouteInfo<SinglePostsRouteArgs> {
  SinglePostsRoute({
    _i13.Key? key,
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

  final _i13.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostsRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i9.UsersPage]
class UsersRoute extends _i12.PageRouteInfo<void> {
  const UsersRoute()
      : super(
          UsersRoute.name,
          path: '',
        );

  static const String name = 'UsersRoute';
}

/// generated route for
/// [_i10.UserInfoPage]
class UserInfoRoute extends _i12.PageRouteInfo<void> {
  const UserInfoRoute()
      : super(
          UserInfoRoute.name,
          path: 'userInfo',
        );

  static const String name = 'UserInfoRoute';
}

/// generated route for
/// [_i11.UserProfilePage]
class UserProfileRoute extends _i12.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    _i13.Key? key,
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

  final _i13.Key? key;

  final int userId;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, userId: $userId}';
  }
}
