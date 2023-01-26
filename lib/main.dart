import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'Classes/MiniProjects/nested_auto_route/app_1/routes/router.gr.dart';
import 'Classes/MiniProjects/skeleteons/movie_skeleton.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  runApp(MyApp());
}

// trying something

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  MaterialApp build(BuildContext context) {
    // return MaterialApp.router(
    //   title: 'Flutter Demo',
    //   debugShowCheckedModeBanner: false,
    //   routerDelegate: _appRouter.delegate(),
    //   routeInformationParser: _appRouter.defaultRouteParser(),
    //   theme: ThemeData.dark(),
    // );

    // return MaterialApp.router(
    //   title: 'Flutter Demo',
    //   debugShowCheckedModeBanner: false,
    //   routerDelegate: _appRouter.delegate(),
    //   routeInformationParser: _appRouter.defaultRouteParser(),
    //   theme: ThemeData.dark(),
    // );

    return MaterialApp(
      title: 'Flutter Demo',
      // initialRoute: '/',
      // onGenerateRoute: RouterManager.generateRoute,
      theme: ThemeData.light(),
      home: const MovieSkeletonPage(),
    );
  }
}
