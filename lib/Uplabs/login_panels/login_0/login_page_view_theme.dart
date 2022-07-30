import 'package:flutter/material.dart';

import 'login_page_view.dart';

class CustomTheme {
  late ThemeData theme;
  CustomTheme() {
    theme = ThemeData(
      fontFamily: 'RobotoMono',
      textTheme: TextTheme(
        headline5: TextStyle(
          color: AllColors().colorWhite,
          fontSize: FontSizes().titleFontSize,
        ),
        subtitle2: TextStyle(
          color: AllColors().colorBlue,
          fontSize: FontSizes().buttonFontSize,
        ),
      ),
    );
  }
}
