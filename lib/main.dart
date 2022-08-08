import 'package:flutter/material.dart';
import 'Uplabs/Calculator/calculator_shared_preferences_0/calculator_main_page.dart';
import 'Uplabs/Calculator/calculator_shared_preferences_0/themes/custom_theme.dart';

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
      theme: CustomTheme().theme,
      home: const CalculatorMainPage(),
    );
  }
}
