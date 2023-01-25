import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'Classes/MiniProjects/nested_auto_route/app_2/routes/app_router.gr.dart';
import 'Classes/MiniProjects/persistent_tab_bar/persistent_tab_bar.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

// trying something

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MaterialApp build(BuildContext context) {
    final _appRouter = RouterE();

    // return MaterialApp.router(
    //   title: 'Flutter Demo',
    //   debugShowCheckedModeBanner: false,
    //   routerDelegate: _appRouter.delegate(),
    //   routeInformationParser: _appRouter.defaultRouteParser(),
    //   theme: ThemeData.dark(),
    // );

    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: ThemeData.dark(),
    );

    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   // initialRoute: '/',
    //   // onGenerateRoute: RouterManager.generateRoute,
    //   theme: ThemeData.dark(),
    //   home: const PersistenTabbar(),
    // );
  }
}
