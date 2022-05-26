// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class PasswordStrengthLevel extends StatefulWidget {
  const PasswordStrengthLevel({Key? key}) : super(key: key);

  @override
  State<PasswordStrengthLevel> createState() => _PasswordStrengthLevelState();
}

// clean the code tomorrow
class _PasswordStrengthLevelState extends State<PasswordStrengthLevel> {
  final String _appBarTitle = "Password Strength Level";
  final String _hintLabelText = "password";
  final double width = 0;
  double _newWidthPoint = 0;
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
              maxLength: LevelOfPasswordChars()._maxLength,
              keyboardType: TextInputType.visiblePassword,
              textAlign: TextAlign.start,
              textInputAction: TextInputAction.go,
              autofocus: true,
              obscureText: _isObscure,
              buildCounter: (BuildContext context,
                  {int? currentLength, bool? isFocused, int? maxLength}) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      key: UniqueKey(),
                      duration: const Duration(seconds: 2),
                      height: 20,
                      width: width + (_newWidthPoint * 10.0),
                      color: pickColor(),
                    ),
                  ],
                );
              },
              onChanged: (text) => setState(() {
                _newWidthPoint = CheckPassword().checkPassword(text)!;
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

  Color pickColor() {
    if (_newWidthPoint < 10) {
      return Colors.red;
    } else if (_newWidthPoint < 18) {
      return Colors.yellow;
    } else {
      return Colors.green;
    }
  }
}

class CheckPassword {
  int signCheckCounter = 0;
  int lowerCaseLetterCheckCounter = 0;
  int upperCaseLetterCheckCounter = 0;
  int intCheckCounter = 0;

  double passwordPoint = 0;

  double? checkPassword(String password) {
    for (int i = 0; i < password.length; i++) {
      int assciCodeOfLetter = password.codeUnitAt(i);

      _signCheck(assciCodeOfLetter);
      _lowerCaseLetterCheck(assciCodeOfLetter);
      _upperCaseLetterCheck(assciCodeOfLetter);
      _intCheck(assciCodeOfLetter);
    }

    return passwordPoint;
  }

  void _signCheck(int assciCodeOfLetter) {
    if ((signCheckCounter < LevelOfPasswordChars()._maxSign) &&
        ((assciCodeOfLetter >= 32 && assciCodeOfLetter <= 47) ||
            (assciCodeOfLetter >= 58 && assciCodeOfLetter <= 64) ||
            (assciCodeOfLetter >= 91 && assciCodeOfLetter <= 96) ||
            (assciCodeOfLetter >= 123 && assciCodeOfLetter <= 126))) {
      passwordPoint = passwordPoint + LevelOfPasswordChars()._signSize;
      signCheckCounter++;
    }
  }

  void _lowerCaseLetterCheck(int assciCodeOfLetter) {
    if (lowerCaseLetterCheckCounter < LevelOfPasswordChars()._maxLowerCase &&
        (assciCodeOfLetter >= 97 && assciCodeOfLetter <= 122)) {
      passwordPoint = passwordPoint + LevelOfPasswordChars()._charSizeLowerCase;
      lowerCaseLetterCheckCounter++;
    }
  }

  void _upperCaseLetterCheck(int assciCodeOfLetter) {
    if (upperCaseLetterCheckCounter < LevelOfPasswordChars()._maxUpperCase &&
        (assciCodeOfLetter >= 65 && assciCodeOfLetter <= 90)) {
      passwordPoint = passwordPoint + LevelOfPasswordChars()._charSizeUpperCase;
      lowerCaseLetterCheckCounter++;
    }
  }

  void _intCheck(int assciCodeOfLetter) {
    if (upperCaseLetterCheckCounter < LevelOfPasswordChars()._maxInt &&
        (assciCodeOfLetter >= 48 && assciCodeOfLetter <= 57)) {
      passwordPoint = passwordPoint + LevelOfPasswordChars()._intSize;
      intCheckCounter++;
    }
  }
}

class LevelOfPasswordChars {
  final int _signSize = 3;
  final int _charSizeLowerCase = 2;
  final int _charSizeUpperCase = 3;
  final int _intSize = 2;

  final int _maxLength = 18;
  final int _maxInt = 2;
  final int _maxUpperCase = 2;
  final int _maxLowerCase = 6;
  final int _maxSign = 2;
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
