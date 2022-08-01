import 'package:flutter/material.dart';

class CustomTheme {
  late ThemeData theme;

  CustomTheme() {
    theme = ThemeData(
      fontFamily: 'RobotoMono',
      textTheme: TextTheme(
        headline3: TextStyle(
          fontSize: FontSizes()._titleFontSize,
          fontWeight: FontWeight.bold,
          color: AllColors().colorBlack,
        ),
        bodyText1: TextStyle(
          fontSize: FontSizes()._textFontSize,
          fontWeight: FontWeight.w600,
          color: AllColors().colorDarkGrey,
          wordSpacing: -5,
        ),
        bodyText2: TextStyle(
          fontSize: FontSizes()._textFontSize,
          fontWeight: FontWeight.w700,
          color: AllColors().colorBlue,
          wordSpacing: -5,
        ),
        button: TextStyle(
          fontSize: FontSizes()._textFontSize,
          color: AllColors().colorDarkGrey,
          letterSpacing: 1,
        ),
        labelMedium: TextStyle(
          fontSize: FontSizes()._buttonFontSize,
          fontWeight: FontWeight.w700,
          color: AllColors().colorWhite,
        ),
      ),
    );
  }
}

class FontSizes {
  final double _titleFontSize = 40;
  final double _buttonFontSize = 18;
  final double _textFontSize = 14;
}

class AllColors {
  Color colorWhite = Colors.white;
  Color colorBlack = Colors.black;
  Color colorBlue = Colors.blue;
  Color colorDarkGrey = const Color.fromARGB(255, 119, 117, 117);
}
