import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DesingningCardWidget extends StatelessWidget {
  const DesingningCardWidget({Key? key}) : super(key: key);
  final String _appBarTitle = "Designing Card Widget";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(_appBarTitle)),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
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
