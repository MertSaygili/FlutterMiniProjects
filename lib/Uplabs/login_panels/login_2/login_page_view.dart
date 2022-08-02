import 'package:flutter/material.dart';

import 'Data/data.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String _currentImagePath;

  @override
  void initState() {
    super.initState();
    _currentImagePath = ImagePaths().morningLoginMode;
  }

  final Stack _changeLoginMod = Stack(
    children: [
      Align(
        alignment: Alignment.center,
        child: ElevatedButton(
          child: const SizedBox(
            width: 200,
            child: Text(
              'Sign out',
              textAlign: TextAlign.right,
            ),
          ),
          onPressed: () {},
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: ElevatedButton(
          child: const SizedBox(
            width: 100,
            child: Text(
              'Sign out',
              textAlign: TextAlign.left,
            ),
          ),
          onPressed: () {},
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_currentImagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ListView(
            children: [
              _changeLoginMod,
            ],
          ),
        ),
      ),
    );
  }

  void _changeToBackgroundMode() {
    setState(() {
      if (_currentImagePath.compareTo(ImagePaths().morningLoginMode) == 0) {
        _currentImagePath = ImagePaths().nightLoginMode;
      } else {
        _currentImagePath = ImagePaths().morningLoginMode;
      }
    });
  }
}
