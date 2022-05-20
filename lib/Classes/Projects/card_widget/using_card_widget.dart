import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class DesingningCardWidget extends StatelessWidget {
  DesingningCardWidget({Key? key}) : super(key: key);
  ColorAttributes colorAttributes = ColorAttributes();
  final String _appBarTitle = "Designing Card Widget";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorAttributes._colorGreen,
        title: Center(child: Text(_appBarTitle)),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Padding(
        padding: PaddingItems().paddingPageNormal,
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}

class PaddingItems {
  final EdgeInsets paddingPageNormal = EdgeInsets.symmetric(
      vertical: PaddingAttributes()._verticalSmall,
      horizontal: PaddingAttributes()._horizontalSmall);
}

class PaddingAttributes {
  final double _verticalSmall = 10;
  final double _horizontalSmall = 8;
}

class ColorAttributes {
  final Color _colorGreen = Colors.green;
  final Color _colorYellow = Colors.yellow;
  final Color _colorRed = Colors.red;
}
