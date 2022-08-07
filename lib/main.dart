import 'package:flutter/material.dart';
import 'PubDev/shared_preferences/restaurant_form_app.dart/form_page_view.dart';
import 'PubDev/shared_preferences/restaurant_form_app.dart/theme/theme.dart';

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
      home: const FormPageView(),
    );
  }
}
