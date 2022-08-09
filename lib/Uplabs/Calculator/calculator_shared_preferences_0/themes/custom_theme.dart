import 'package:flutter/material.dart';

import '../items/items.dart';

class CustomTheme {
  late final ThemeData theme;
  late final ColorItems _colors;
  late final FontItems _fonts;

  CustomTheme() {
    _colors = ColorItems();
    _fonts = FontItems();

    theme = ThemeData(
      textTheme: TextTheme(
        headline6: TextStyle(
            // for title, question
            fontSize: _fonts.fontSizeNormal,
            color: _colors.colorIconSelected),
        subtitle1: TextStyle(
          fontSize: _fonts.fontSizeBig,
          color: _colors.colorWhite,
        ), // for subtitle, answer
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: _colors.colorIconSelected,
        unselectedItemColor: _colors.colorIconUnselected,
      ),
    );
  }
}
