import 'package:flutter/material.dart';

import '../items/items.dart';

class CustomTheme {
  late final ThemeData theme;
  late final ColorItems _colors;
  late final FontItems _fonts;
  late final IconItems _icons;

  CustomTheme() {
    _colors = ColorItems();
    _fonts = FontItems();
    _icons = IconItems();

    theme = ThemeData(
      fontFamily: 'RobotoMono',
      textTheme: TextTheme(
        // for title, question
        headline6: TextStyle(
          fontSize: _fonts.fontSizeNormal,
          fontWeight: FontWeight.w500,
          color: _colors.colorDarkGray,
        ),
        // for subtitle, answer
        subtitle1: TextStyle(
          fontSize: _fonts.fontSizeBig,
          fontWeight: FontWeight.w600,
          color: _colors.colorWhite,
        ),
        button: TextStyle(
          fontSize: _fonts.fontSizeExtraLarge,
          fontWeight: FontWeight.w600,
          color: _colors.colorWhite,
        ),
      ),

      // navigation bar theme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          color: _colors.colorIconSelected,
          size: _icons.iconSizeBig,
        ),
        unselectedIconTheme: IconThemeData(
          color: _colors.colorIconUnselected,
          size: _icons.iconSizeNormal,
        ),
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
