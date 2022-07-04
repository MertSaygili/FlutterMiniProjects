import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/Projects/navigation/navigation_page2.dart';

import 'navigation_page3.dart';

class NavigationPageOne extends StatefulWidget {
  const NavigationPageOne({Key? key}) : super(key: key);

  @override
  State<NavigationPageOne> createState() => _NavigationPageOneState();
}

class _NavigationPageOneState extends State<NavigationPageOne> {
  final String titleAppBar = 'Page 1';
  final String textElevatedButton = 'Go to page two';
  final String textElevatedButton2 = 'Send data to page3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppBar),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavigationPageTwo()));
              },
              child: Text(
                textElevatedButton,
                style: const TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavigationPageThree(
                      userName: 'Mert Inan',
                      userLastName: 'Saygili',
                    ),
                  ),
                );
              },
              child: Text(textElevatedButton2),
            ),
          ),
        ],
      ),
    );
  }
}
