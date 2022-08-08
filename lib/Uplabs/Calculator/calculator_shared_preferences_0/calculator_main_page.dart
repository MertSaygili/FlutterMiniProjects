import 'package:flutter/material.dart';

class CalculatorMainPage extends StatefulWidget {
  const CalculatorMainPage({Key? key}) : super(key: key);

  @override
  State<CalculatorMainPage> createState() => _CalculatorMainPageState();
}

class _CalculatorMainPageState extends State<CalculatorMainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'a'),
            BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b'),
          ],
        ),
      ),
    );
  }
}
