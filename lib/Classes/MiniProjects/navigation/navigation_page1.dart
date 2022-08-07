import 'package:flutter/material.dart';

import 'navigation_page2.dart';
import 'navigation_page3.dart';
import 'navigation_page4.dart';

class NavigationPageOne extends StatefulWidget {
  const NavigationPageOne({Key? key}) : super(key: key);

  @override
  State<NavigationPageOne> createState() => _NavigationPageOneState();
}

class _NavigationPageOneState extends State<NavigationPageOne> {
  final String titleAppBar = 'Page 1';
  final String textElevatedButton = 'Go to page two';
  final String textElevatedButton2 = 'Send data to page three';
  final String textGesture = 'Go to page 4';
  final String imagePath = 'https://picsum.photos/250?image=9';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppBar),
      ),
      body: Column(
        children: [
          centeredElevatedButton(context),
          sendDataElevatedButton(context),
          animatedElevatedButton(context),
        ],
      ),
    );
  }

  Center animatedElevatedButton(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => const NavigationPageFour()),
            ),
          );
        },
        child: Hero(
          tag: 'Image Hero',
          child: Image.network(imagePath),
        ),
      ),
    );
  }

  Center sendDataElevatedButton(BuildContext context) {
    return Center(
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
    );
  }

  Center centeredElevatedButton(BuildContext context) {
    return Center(
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
    );
  }
}
