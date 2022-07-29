import 'package:flutter/material.dart';
import 'Uplabs/login_panels/login_0/login_page_view.dart';

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
      home: const LoginPageViewOne(),
    );
  }
}
