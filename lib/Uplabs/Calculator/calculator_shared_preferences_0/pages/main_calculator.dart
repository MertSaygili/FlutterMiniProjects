import 'package:flutter/material.dart';

import '../items/items.dart';

class MainCalculatorPage extends StatefulWidget {
  const MainCalculatorPage({Key? key}) : super(key: key);

  @override
  State<MainCalculatorPage> createState() => _MainCalculatorPageState();
}

class _MainCalculatorPageState extends State<MainCalculatorPage> {
  final String _text = '4321';

  @override
  void initState() {
    super.initState();
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
                  color: Colors.transparent,
                  height: 180,
                  width: 400,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ListTile(
                      title: Text(
                        // for question
                        _text,
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      subtitle: Text(
                        // for answer
                        _text,
                        textAlign: TextAlign.right,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: ColorItems().colorIconSelected,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
