import 'package:flutter/material.dart';

class RouteApp2 extends StatelessWidget {
  const RouteApp2({Key? key, required this.title}) : super(key: key);

  final String title;
  final String _pageText = "You are on the second page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: true),
      body: Center(child: Text(_pageText)),
    );
  }
}
