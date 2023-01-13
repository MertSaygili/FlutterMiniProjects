import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/route/app_1.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/route/router.dart';

import 'Classes/MiniProjects/route/app_2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

// trying something

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: RouterManager.generateRoute,
      theme: ThemeData.dark(),
      // home: const ExtensionAppView(),
    );
  }
}
