// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class PasswordStrengthLevel extends StatefulWidget {
  const PasswordStrengthLevel({Key? key}) : super(key: key);

  @override
  State<PasswordStrengthLevel> createState() => _PasswordStrengthLevelState();
}

class _PasswordStrengthLevelState extends State<PasswordStrengthLevel> {
  final String _appBarTitle = "Password Strength Level";
  final String _hintLabelText = "password";
  final double width = 0;
  final int _maxLength = 20;
  bool _isObscure = false;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(_appBarTitle))),
      body: Column(
        children: [
          Padding(
            padding: PaddingSettings().paddingTextField,
            child: TextField(
              maxLength: _maxLength,
              keyboardType: TextInputType.visiblePassword,
              textAlign: TextAlign.start,
              textInputAction: TextInputAction.go,
              autofocus: true,
              obscureText: _isObscure,
              buildCounter: (BuildContext context,
                  {int? currentLength, bool? isFocused, int? maxLength}) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedContainer(
                      key: UniqueKey(),
                      duration: const Duration(seconds: 2),
                      height: 20,
                      width: width + (currentLength! * 10.0),
                      color: Colors.green,
                    ),
                  ],
                );
              },
              onChanged: (text) => setState(() {
                CheckPassword().checkPassword(text);
              }),
              decoration: InputDecoration(
                border: outlineInputBorder(),
                prefixIcon: const Icon(Icons.key),
                suffixIcon: visibilityOfButton(),
                hintText: _hintLabelText,
                labelText: _hintLabelText,
                fillColor: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
        ],
      ),
    );
  }

  double calculateWidth() {
    return 1;
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    );
  }

  IconButton visibilityOfButton() {
    return IconButton(
      icon: _isObscure
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      onPressed: () {
        setState(() {
          _isObscure = !_isObscure;
        });
      },
    );
  }
}

class CheckPassword {
  int checkPassword(String password) {
    int passwordPoint = 0;

    for (int i = 0; i < password.length; i++) {
      int assciCodeOfLetter = password[i] as int;

      if ((assciCodeOfLetter >= 32 && assciCodeOfLetter <= 47) ||
          (assciCodeOfLetter >= 58 && assciCodeOfLetter <= 64) ||
          (assciCodeOfLetter >= 91 && assciCodeOfLetter <= 96) ||
          (assciCodeOfLetter >= 123 && assciCodeOfLetter <= 126)) {
        passwordPoint = passwordPoint + LevelOfPasswordChars()._signSize;
      }
    }
    print(passwordPoint);

    return 0;
  }
}

class LevelOfPasswordChars {
  final int _signSize = 50;
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
