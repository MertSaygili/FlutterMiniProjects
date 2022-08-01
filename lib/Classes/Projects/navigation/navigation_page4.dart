import 'package:flutter/material.dart';

class NavigationPageFour extends StatefulWidget {
  const NavigationPageFour({Key? key}) : super(key: key);

  @override
  State<NavigationPageFour> createState() => _NavigationPageFourState();
}

class _NavigationPageFourState extends State<NavigationPageFour> {
  final String titleAppBar = 'Page 4';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppBar),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
        ),
      ),
    );
  }
}
