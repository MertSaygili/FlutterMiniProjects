import 'package:auto_route/annotations.dart';

import '../../../persistent_tab_bar/persistent_tab_bar.dart';
import '../../app_1/settings_page.dart';
import '../dashboard/dashboard.dart';
import '../dashboard/profile/profile_detail_page.dart';
import '../home/home_detail_view.dart';
import '../home/home_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, path: '/', initial: true),
    AutoRoute(page: HomeDetailView, path: 'Detail'),
    AutoRoute(
      page: DashboardPage,
      path: 'Dashboard',
      children: <AutoRoute>[
        AutoRoute(page: ChatPage, path: 'Chat'),
        AutoRoute(page: ProfilePage, path: 'Profile', children: <AutoRoute>[AutoRoute(page: ProfileDetailPage, path: 'ProfileDetail')]),
        AutoRoute(page: SettingsPage, path: 'Settings'),
      ],
    ),
  ],
)
class $RouterE {}

// SinglePostPageRoute
