import 'package:flutter/material.dart';

class CustomTheme {
  late final ThemeData theme;
  late final UsedColors colors;
  late final FontSizes fonts;

  CustomTheme() {
    colors = UsedColors();
    fonts = FontSizes();

    theme = ThemeData(
      fontFamily: 'RobotoMono',
      textTheme: TextTheme(
        labelMedium: TextStyle(
          color: colors.colorWhite,
          fontSize: fonts.fontSizeMedium,
        ),
      ),
    );
  }
}

class UsedColors {
  Color colorWhite = Colors.white;
}

class FontSizes {
  double fontSizeMedium = 16;
}

class TextDecorations {}
