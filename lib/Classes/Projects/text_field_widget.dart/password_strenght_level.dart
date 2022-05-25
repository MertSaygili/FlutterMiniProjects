// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class PasswordStrengthLevel extends StatefulWidget {
  const PasswordStrengthLevel({Key? key}) : super(key: key);

  @override
  State<PasswordStrengthLevel> createState() => _PasswordStrengthLevelState();
}

class _PasswordStrengthLevelState extends State<PasswordStrengthLevel> {
  final String _appBarTitle = "Password Strength Level";
  bool _isObscure = false;
  String? _password;

  final int maxLength = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(_appBarTitle))),
      body: Column(
        children: [
          Padding(
            padding: PaddingSettings().paddingTextField,
            child: TextField(
              maxLength: 20,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.start,
              textInputAction: TextInputAction.go,
              autofocus: true,
              obscureText: _isObscure,
              onChanged: (text) => setState(() {
                print(text);
              }),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(Icons.key),
                suffixIcon: IconButton(
                  icon: _isObscure
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
                hintText: "password",
                labelText: "password",
                fillColor: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CheckPassword {
  void checkPassword(String password) {
    if (password.contains('@')) {
      // ignore: avoid_print
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
  final double paddingVerticalNormal = 30;
  final double paddingHorizontalNormal = 10;
}
