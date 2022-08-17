import 'package:flutter/material.dart';
import 'Classes/MiniProjects/generic/generic_basic_view.dart';
import 'Uplabs/Calculator/calculator_shared_preferences_0/themes/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

// trying something

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      //theme: CustomTheme().theme,
      home: GenericBasicView(),
    );
  }
}
