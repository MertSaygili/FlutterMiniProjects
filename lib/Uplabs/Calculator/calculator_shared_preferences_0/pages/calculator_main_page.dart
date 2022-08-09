import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Uplabs/Calculator/calculator_shared_preferences_0/pages/main_calculator.dart';

import '../items/items.dart';

class CalculatorMainPage extends StatefulWidget {
  const CalculatorMainPage({Key? key}) : super(key: key);

  @override
  State<CalculatorMainPage> createState() => _CalculatorMainPageState();
}

enum BottomTabBarItems { calculator, function, history }

class _CalculatorMainPageState extends State<CalculatorMainPage>
    with TickerProviderStateMixin {
  late PageController _controller;
  int _currentIndex = 0; // ignore: unused_field

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: _setNewPage,
        children: [
          const MainCalculatorPage(),
          Container(color: ColorItems().colorBackgroundPages),
          Container(color: ColorItems().colorBackgroundPages),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: IconItems().iconCalculator,
            label: '',
            backgroundColor: ColorItems().colorBackgroundNavigation,
          ),
          BottomNavigationBarItem(
            icon: IconItems().iconFunction,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconItems().iconHistory,
            label: '',
          ),
        ],
        onTap: _onTap,
      ),
    );
  }

  void _setNewPage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onTap(int newIndex) {
    _controller.animateToPage(
      newIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }
}
