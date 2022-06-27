import 'package:flutter/material.dart';

import 'Classes/Projects/tab_bar/tab_bar_basic_interview/tab_bar_basic.dart';

void main() {
  runApp(const MyApp());
}

// trying something

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TabBarBasic(),
    );
  }
}
