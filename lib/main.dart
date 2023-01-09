import 'package:flutter/material.dart';
import 'Classes/MiniProjects/shared_preferences/login_validation_example/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

// trying something

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: const PreferencesLoginPage(),
    );
  }
}
