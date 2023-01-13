import 'package:flutter/material.dart';

class RouteApp extends StatefulWidget {
  const RouteApp({Key? key}) : super(key: key);

  @override
  State<RouteApp> createState() => _RouteAppState();
}

class _RouteAppState extends State<RouteApp> {
  final String _title = 'Route';
  final String _secondPageRoute = '/second';
  final String _pageText = 'You are on the first page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title), centerTitle: true),
      body: Center(child: Text(_pageText)),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, _secondPageRoute, arguments: _title);
      }),
    );
  }
}
