import 'package:flutter/material.dart';

class IconItems {
  final Icon iconCalculator = const Icon(Icons.calculate);
  final Icon iconFunction = const Icon(Icons.functions);
  final Icon iconHistory = const Icon(Icons.history);
}

class ColorItems {
  final Color colorBlack = Colors.black;
  final Color colorWhite = Colors.white;
  final Color colorPurple = Colors.purple;
  final Color colorGreen = Colors.green;
  final Color colorRed = Colors.red;
  final Color colorYellow = Colors.yellow;
  final Color colorBackgroundNavigation = const Color.fromRGBO(33, 69, 87, 100);
  final Color colorBackgroundPages = const Color.fromRGBO(34, 40, 49, 80);
  final Color colorIconUnselected = const Color.fromRGBO(0, 243, 181, 100);
  final Color colorIconSelected = const Color.fromRGBO(0, 243, 255, 10);
}

class PaddingItems {
  final EdgeInsets paddingPage = EdgeInsets.symmetric(
    vertical: PaddingValues().paddingVerticalPage,
    horizontal: PaddingValues().paddingHorizontalPage,
  );
}

class PaddingValues {
  final double paddingVerticalPage = 20;
  final double paddingHorizontalPage = 10;
}
