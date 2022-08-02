import 'package:flutter/material.dart';

class CustomTheme {
  late ThemeData theme;

  CustomTheme() {
    theme = ThemeData(
      fontFamily: 'RobotoMono',
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: FontSizes().high,
          fontWeight: FontWeight.w600,
          color: AllColors().white,
          wordSpacing: -5,
          letterSpacing: -1,
        ),
        subtitle1: TextStyle(
          fontSize: FontSizes().small,
          fontWeight: FontWeight.w200,
          color: AllColors().white,
          letterSpacing: -1,
          wordSpacing: -2,
        ),
      ),
    );
  }
}

class FontSizes {
  final double high = 28;
  final double medium = 18;
  final double small = 15;
}

class AllColors {
  Color transparent = Colors.transparent;
  Color white = Colors.white;
  Color black = Colors.black;
}
