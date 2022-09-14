import 'package:flutter/material.dart';
import 'Classes/MiniProjects/text_field_widget.dart/basic_text_form_field.dart';

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
      home: BasicTextField(),
    );
  }
}
