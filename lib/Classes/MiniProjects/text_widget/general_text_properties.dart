import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GeneralTextProperties extends StatelessWidget {
  const GeneralTextProperties({Key? key}) : super(key: key);
  final String appBarTitle = "General Text Properties";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(appBarTitle)),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingProperty().paddingPage,
        child: Column(
          children: [
            Row(),
          ],
        ),
      ),
    );
  }
}

class PaddingProperty {
  final EdgeInsets paddingPage =
      const EdgeInsets.symmetric(vertical: 15, horizontal: 8);
}
