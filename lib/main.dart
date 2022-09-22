import 'package:flutter/material.dart';
import 'Classes/MiniProjects/sqflite/sqflite_project_0/take_input_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

// trying something

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const TakeInputPage(),
    );
  }
}
