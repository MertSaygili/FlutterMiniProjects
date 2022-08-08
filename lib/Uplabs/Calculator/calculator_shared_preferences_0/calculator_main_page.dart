import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/card_widget/personel_management_card_widget.dart';

import 'items/items.dart';

class CalculatorMainPage extends StatefulWidget {
  const CalculatorMainPage({Key? key}) : super(key: key);

  @override
  State<CalculatorMainPage> createState() => _CalculatorMainPageState();
}

enum BottomTabBarItems { calculator, function, history }

class _CalculatorMainPageState extends State<CalculatorMainPage>
    with TickerProviderStateMixin {
  late TabController _controller;
  late int _length;
  late int _index; // ignore: unused_field

  @override
  void initState() {
    super.initState();
    _length = BottomTabBarItems.values.length;

    _index = 0;
    _controller = TabController(length: _length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _length,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          controller: _controller,
          onTap: (int index) {
            _onTap(index);
          },
          tabs: [
            Tab(icon: IconItems().iconCalculator),
            Tab(icon: IconItems().iconFunction),
            Tab(icon: IconItems().iconHistory),
          ],
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.yellow),
          ],
        ),
      ),
    );
  }

  void _onTap(int index) {
    setState(() {
      _index = index;
    });
  }
}
