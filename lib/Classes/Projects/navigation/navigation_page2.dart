import 'package:flutter/material.dart';

class NavigationPageTwo extends StatefulWidget {
  const NavigationPageTwo({Key? key}) : super(key: key);

  @override
  State<NavigationPageTwo> createState() => _NavigationPageTwoState();
}

class _NavigationPageTwoState extends State<NavigationPageTwo> {
  final String titleAppBar = 'Page 2';
  final String textElevatedButton = 'Return to page 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppBar),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(textElevatedButton),
        ),
      ),
    );
  }
}
