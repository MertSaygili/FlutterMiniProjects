import 'package:flutter/material.dart';

class BottomTapBar extends StatefulWidget {
  const BottomTapBar({Key? key}) : super(key: key);

  @override
  State<BottomTapBar> createState() => _BottomTapBarState();
}

class _BottomTapBarState extends State<BottomTapBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        selectedItemColor: Colors.green,
        selectedFontSize: 16,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

const List<Widget> _pages = <Widget>[
  Icon(
    Icons.home,
    size: 150,
  ),
  Icon(
    Icons.person,
    size: 150,
  ),
  Icon(
    Icons.settings,
    size: 150,
  ),
];
