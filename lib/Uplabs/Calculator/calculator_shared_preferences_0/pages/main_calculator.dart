import 'package:flutter/material.dart';

import '../items/items.dart';

class MainCalculatorPage extends StatefulWidget {
  const MainCalculatorPage({Key? key}) : super(key: key);

  @override
  State<MainCalculatorPage> createState() => _MainCalculatorPageState();
}

class _MainCalculatorPageState extends State<MainCalculatorPage> {
  late String _text;

  @override
  void initState() {
    super.initState();
    _text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorItems().colorBackgroundPages,
        padding: PaddingItems().paddingPage,
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.red,
                  height: 200,
                  width: 400,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ListTile(
                      title: Text(_text),
                      subtitle: Text(_text),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
