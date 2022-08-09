import 'package:flutter/material.dart';

import '../items/items.dart';

class CustomTheme {
  late ThemeData theme;

  CustomTheme() {
    theme = ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: ColorItems().colorIconSelected,
        unselectedItemColor: ColorItems().colorIconUnselected,
      ),
    );
  }
}
