import 'package:flutter/material.dart';

class PasswordStrengthLevel extends StatefulWidget {
  const PasswordStrengthLevel({Key? key}) : super(key: key);

  @override
  State<PasswordStrengthLevel> createState() => _PasswordStrengthLevelState();
}

class _PasswordStrengthLevelState extends State<PasswordStrengthLevel> {
  bool _isObscure = false;

  final int maxLength = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextField(
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.go,
          obscureText: _isObscure,
          maxLength: maxLength,
          onChanged: (text) => setState(() {
            print(text);
          }),
          decoration: const InputDecoration(),
        ),
      ),
    );
  }
}
