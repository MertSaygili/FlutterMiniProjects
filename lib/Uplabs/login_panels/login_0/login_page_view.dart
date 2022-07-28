import 'package:flutter/material.dart';

class LoginPageViewOne extends StatefulWidget {
  const LoginPageViewOne({Key? key}) : super(key: key);

  @override
  State<LoginPageViewOne> createState() => _LoginPageViewOneState();
}

class _LoginPageViewOneState extends State<LoginPageViewOne> {
  final String _loginTitle = 'Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 45),
        child: Column(
          children: [
            Text(
              _loginTitle,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTheme {
  late ThemeData theme;

  CustomTheme() {
    theme = ThemeData(
      textTheme: const TextTheme(
        headline3: TextStyle(
          color: Colors.pink,
        ),
      ),
    );
  }
}
