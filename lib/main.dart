import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/authentication_management_shared_preferences/local/shared/shared_preferences_manager.dart';
import 'package:project1_change_appbar_color/authentication_management_shared_preferences/local/view/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

// trying something

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final SharedManager sharedManager = SharedManager();
  late Widget x;

  @override
  MaterialApp build(BuildContext context) {
    _checkValidation();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: LoginPageSharedManagement(),
    );
  }

  void _checkValidation() async {
    bool result = await sharedManager.getBool(SharedKeys.hasUserEnter);
    print(result);
  }
}
