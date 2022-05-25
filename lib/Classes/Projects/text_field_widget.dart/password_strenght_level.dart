// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class PasswordStrengthLevel extends StatefulWidget {
  const PasswordStrengthLevel({Key? key}) : super(key: key);

  @override
  State<PasswordStrengthLevel> createState() => _PasswordStrengthLevelState();
}

class _PasswordStrengthLevelState extends State<PasswordStrengthLevel> {
  final bool _isObscure = false;
  String? _password;

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
          autofocus: true,
          textAlign: TextAlign.start,
          onChanged: (_currentPassword) => setState(() {
            _password = _currentPassword;
            CheckPassword().checkPassword(_password!);
          }),
          decoration: InputDecoration(
            labelText: "Merhaba",
            hintText: "Naber",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefix: const Icon(Icons.key_sharp, size: 20),
            suffix: const Icon(Icons.visibility, size: 20),
          ),
        ),
      ),
    );
  }
}

class CheckPassword {
  void checkPassword(String password) {
    if (password.contains('@')) {
      print("yaho");
    }
  }
}

class LevelOfPasswordChars {
  final int _signSize = 100;
  final int _charSizeLowerCase = 10;
  final int _charSizeUpperCase = 10;
  final int _intSize = 10;
  final int _length = 10;

  final maxLength = 12;
  final maxInt = 2;
  final maxUpperCase = 2;
  final maxLowerCase = 6;
  final maxSign = 2;
}

class PaddingSettings {
  final EdgeInsets paddingTextField = EdgeInsets.symmetric(
    vertical: PaddingItems().paddingVerticalNormal,
    horizontal: PaddingItems().paddingHorizontalNormal,
  );
}

class PaddingItems {
  final double paddingVerticalNormal = 10;
  final double paddingHorizontalNormal = 10;
}
