import 'package:flutter/material.dart';

class IconItems {
  final Icon iconCalculator = const Icon(Icons.calculate);
  final Icon iconFunction = const Icon(Icons.functions);
  final Icon iconHistory = const Icon(Icons.history);
  final Icon iconChevronLeft = const Icon(Icons.delete_sharp);

  final double iconSizeNormal = 24;
  final double iconSizeBig = 30;
}

class ColorItems {
  final Color colorLightBlack = const Color.fromARGB(255, 58, 58, 58);
  final Color colorWhite = Colors.white;
  final Color colorYellow = Colors.yellow;
  final Color colorDarkGray = const Color.fromARGB(255, 50, 51, 51);
  final Color colorBackgroundNavigation = const Color.fromRGBO(33, 69, 87, 100);
  final Color colorBackgroundPages = const Color.fromRGBO(34, 40, 49, 80);
  final Color colorIconUnselected = const Color.fromRGBO(0, 243, 181, 100);
  final Color colorIconSelected = const Color.fromRGBO(0, 243, 255, 10);
}

class FontItems {
  final double fontSizeSmall = 14;
  final double fontSizeNormal = 18;
  final double fontSizeBig = 24;
  final double fontSizeExtraLarge = 36;
}

class PaddingItems {
  final EdgeInsets paddingPage = EdgeInsets.symmetric(
    vertical: PaddingValues().paddingVerticalPage,
    horizontal: PaddingValues().paddingHorizontalPage,
  );
  final EdgeInsets paddingVerticalOnlySmall = EdgeInsets.symmetric(
    vertical: PaddingValues().paddingVerticalSmall,
    horizontal: PaddingValues().paddingHorizontalSmall,
  );
}

class PaddingValues {
  final double paddingVerticalPage = 20;
  final double paddingHorizontalPage = 20;
  final double paddingVerticalSmall = 5;
  final double paddingHorizontalSmall = 5;
}

class HeightWidthItems {
  final double maxWidth = 400;
  final double normalHeight = 180;

  final double smallWidth = 75;
  final double smallHeight = 60;
}
