// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:project1_change_appbar_color/Classes/MiniProjects/nested_auto_route/app_2/routes/app_router.gr.dart';

// class DashboardPage extends StatelessWidget {
//   const DashboardPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AutoTabsRouter.tabBar(
//       routes: const [ChatRouter(), ProfileRoute(), SettingsRouter()],
//       builder: ((context, child, tabController) {
//         return Scaffold(
//           appBar: AppBar(title: const Text('Dashboard')),
//           body: child,
//           bottomNavigationBar: BottomNavigationBar(
//             currentIndex: context.tabsRouter.activeIndex,
//             onTap: context.tabsRouter.setActiveIndex,
//             items: const [
//               BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
//               BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
//               BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
//             ],
//           ),
//         );
//       }),
//     );
//   }
// }
