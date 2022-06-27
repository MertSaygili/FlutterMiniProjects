import 'package:flutter/material.dart';

class TabBarBasic extends StatefulWidget {
  const TabBarBasic({Key? key}) : super(key: key);

  @override
  State<TabBarBasic> createState() => _TabBarBasicState();
}

class _TabBarBasicState extends State<TabBarBasic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
