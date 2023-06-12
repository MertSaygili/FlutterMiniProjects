import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/dependcy_injection_getit/init.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  // await SingletonInit().configureDependencies();

  runApp(const MyApp());
}

// trying something

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // final _appRouter = AppRouter();

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
      home: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: null,
      ),
    );
  }
}
