import 'package:flutter/material.dart';
import 'Classes/Projects/trext_field_widget.dart/simple_login_page.dart';

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
      home: const SimpleLoginPage(),
    );
  }
}
