import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/nested_auto_route/app_1/settings_page.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/nested_auto_route/app_1/single_post_page.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/nested_auto_route/app_1/user_profile_page.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/nested_auto_route/app_1/users_page.dart';

import '../home_page.dart';
import '../posts_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      initial: true,
      page: HomePage,
      children: [
        AutoRoute(
          path: 'posts',
          name: 'PostsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: PostsPage),
            AutoRoute(path: ':postId', page: SinglePostsPage),
          ],
        ),
        AutoRoute(
          path: 'users',
          name: 'UsersRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: UsersPage),
            AutoRoute(path: ':userId', page: UserProfilePage),
          ],
        ),
        AutoRoute(
          path: 'settings',
          name: 'SettingsRouter',
          page: SettingsPage,
        )
      ],
    ),
  ],
)
class $AppRouter {}

// SinglePostPageRoute
