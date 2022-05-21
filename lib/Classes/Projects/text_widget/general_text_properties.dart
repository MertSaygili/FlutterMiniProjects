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
    );
  }
}
