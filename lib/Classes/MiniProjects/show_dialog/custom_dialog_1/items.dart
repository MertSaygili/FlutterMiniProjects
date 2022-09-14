import 'package:flutter/material.dart';

class IconItems {
  final Icon iconOpen = const Icon(Icons.open_in_browser);
  final Icon iconClose = const Icon(Icons.close);
}

class PaddingItems {
  final EdgeInsets zeroPadding = EdgeInsets.zero;
  final EdgeInsets contentPaddingDialog = const EdgeInsets.symmetric(
    horizontal: 15,
  );
  final EdgeInsets textFieldContentPadding = const EdgeInsets.symmetric(
    vertical: 5,
    horizontal: 5,
  );
}

class Shapes {
  RoundedRectangleBorder borderDialog = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
    side: const BorderSide(
      style: BorderStyle.solid,
      color: Colors.black,
      width: 1,
    ),
  );

  OutlineInputBorder borderTextField = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      gapPadding: 0,
      borderSide: const BorderSide(
        style: BorderStyle.solid,
        color: Colors.black,
        width: 1,
      ));
}
