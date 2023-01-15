import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'Classes/MiniProjects/snack_bar/snack_bar_app.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

// trying something

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // initialRoute: '/',
      // onGenerateRoute: RouterManager.generateRoute,
      theme: ThemeData.dark(),
      home: SnackBarApp(),
    );
  }
}
