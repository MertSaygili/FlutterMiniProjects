import 'package:flutter/material.dart';

class LoginPageViewOne extends StatefulWidget {
  const LoginPageViewOne({Key? key}) : super(key: key);

  @override
  State<LoginPageViewOne> createState() => _LoginPageViewOneState();
}

class _LoginPageViewOneState extends State<LoginPageViewOne> {
  final String _loginTitle = 'Login';
  late final double _screenWidth = MediaQuery.of(context).size.width;
  late final double _screenHeight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: _screenHeight / 6,
                  width: _screenWidth,
                  color: Colors.transparent,
                ),
                Positioned(
                  top: 5,
                  left: _screenWidth / 3,
                  child: Container(
                    height: 80,
                    width: _screenWidth / 4,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  left: _screenWidth / 8,
                  child: Container(
                    height: 100,
                    width: _screenWidth / 2,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Positioned(
                  top: _screenHeight / 22,
                  left: _screenWidth / 2.9,
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        // fontFamily: 'RobotoMono',
                        //fontWeight: FontWeight.w500,
                        fontSize: 24),
                  ),
                ),
              ],
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
        headline5: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
    );
  }
}
