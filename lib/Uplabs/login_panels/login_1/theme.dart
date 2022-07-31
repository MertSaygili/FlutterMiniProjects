import 'package:flutter/material.dart';

class CustomTheme {
  late ThemeData theme;

  CustomTheme() {
    theme = ThemeData(
      fontFamily: 'RobotoMono',
      textTheme: TextTheme(
        headline3: TextStyle(
          fontSize: FontSizes().titleFontSize,
          fontWeight: FontWeight.bold,
          color: AllColors().colorBlack,
        ),
      ),
    );
  }
}

class FontSizes {
  final double titleFontSize = 40;
}

class AllColors {
  Color colorBlack = Colors.black;
}
