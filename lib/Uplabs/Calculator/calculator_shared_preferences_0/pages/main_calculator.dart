import 'package:flutter/material.dart';

import '../items/items.dart';

class MainCalculatorPage extends StatefulWidget {
  const MainCalculatorPage({Key? key}) : super(key: key);

  @override
  State<MainCalculatorPage> createState() => _MainCalculatorPageState();
}

class _MainCalculatorPageState extends State<MainCalculatorPage> {
  String _text = '4321';

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
                  height: HeightWidthItems().normalHeight,
                  width: HeightWidthItems().maxWidth,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: CustomListTile(text: _text),
                  ),
                ),
                const CustomDivider(thickness: 1.3),
                Padding(
                  padding: PaddingItems().paddingVerticalOnlySmall,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customButton(
                          context, '7', ColorItems().colorIconUnselected),
                      customButton(
                          context, '8', ColorItems().colorIconUnselected),
                      customButton(
                          context, '9', ColorItems().colorIconUnselected),
                      customButton(
                          context, '/', ColorItems().colorIconUnselected),
                      customButton(
                          context, 'X', ColorItems().colorIconUnselected),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox customButton(BuildContext context, String text, Color color) {
    double _elevation = 15;
    double _borderRadiusVal = 10;
    BorderRadius _borderRadius = BorderRadius.circular(_borderRadiusVal);

    return SizedBox(
      height: HeightWidthItems().smallHeight,
      width: HeightWidthItems().smallWidth,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _text = _text + text;
          });
        },
        style: ElevatedButton.styleFrom(
          elevation: _elevation,
          primary: color,
          shadowColor: ColorItems().colorDarkGray,
          shape: RoundedRectangleBorder(borderRadius: _borderRadius),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(text, style: Theme.of(context).textTheme.button),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required String text,
  })  : _text = text,
        super(key: key);

  final String _text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        _text,
        textAlign: TextAlign.right,
        style: Theme.of(context).textTheme.headline6,
      ), // for question
      subtitle: Text(
        _text,
        textAlign: TextAlign.right,
        style: Theme.of(context).textTheme.subtitle1,
      ), // for answer
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    required this.thickness,
  }) : super(key: key);

  final double thickness;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ColorItems().colorLightBlack,
      thickness: thickness,
    );
  }
}
