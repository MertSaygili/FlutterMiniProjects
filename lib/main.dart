import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/state_management/bloc/block_counter_app/counter_page.dart';

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
      theme: ThemeData.light(),
      home: const CounterPage(),
    );
  }
}
