import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Uplabs/Calculator/calculator_shared_preferences_0/pages/calculator_main_page.dart';

import '../classes/calculate.dart';
import '../items/items.dart';

class MainCalculatorPage extends StatefulWidget {
  const MainCalculatorPage({Key? key}) : super(key: key);

  @override
  State<MainCalculatorPage> createState() => _MainCalculatorPageState();
}

class _MainCalculatorPageState extends State<MainCalculatorPage> {
  String _text = '';

  List<String> firstLine = ['C', '%', '/', 'X'];
  List<String> secondLine = ['7', '8', '9', '-'];
  List<String> thirdLine = ['4', '5', '6', '+'];
  List<String> fourthLine = ['1', '2', '3', '='];
  List<String> fifthLine = ['.', '0', '', '='];

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
                line(context, firstLine),
                line(context, secondLine),
                line(context, thirdLine),
                line(context, fourthLine),
                line(context, fifthLine),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding line(BuildContext context, List<String> line) {
    return Padding(
      padding: PaddingItems().paddingVerticalOnlySmall,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customButton(context, line[0], null),
          customButton(context, line[1], null),
          customButton(context, line[2], IconItems().iconChevronLeft),
          customButton(context, line[3], null),
        ],
      ),
    );
  }

  SizedBox customButton(BuildContext context, String text, Icon? iconX) {
    Color _color = ColorItems().colorDarkGray;
    double _elevation = 20;
    double _borderRadiusVal = 15;
    BorderRadius _borderRadius = BorderRadius.circular(_borderRadiusVal);
    const String _error = 'ERROR';

    void _switchCase() {
      setState(() {
        switch (text) {
          case '=': // calculate
            Calculate().calculate(_text);
            break;
          case 'C': //clear
            _text = '';
            break;
          case '': // when user clicked to icon
            if (_text.compareTo(_error) == 0) {
              _text = '';
            } else if (_text != '') {
              _text = _text.substring(0, _text.length - 1);
            } else {
              _text = _error;
            }
            break;
          default: // number
            _text = _text + text;
        }
      });
    }

    Widget setButtonText(String text, Icon? iconX) {
      if (iconX != null && text == '') {
        return iconX;
      } else {
        int asciiCode = text.codeUnitAt(0);

        if (asciiCode < 48 || asciiCode > 57) {
          _color = ColorItems().colorIconUnselected;
          return Text(text,
              style: TextStyle(color: ColorItems().colorIconSelected));
        }
        return Text(text, style: Theme.of(context).textTheme.button);
      }
    }

    return SizedBox(
      height: HeightWidthItems().smallHeight,
      width: HeightWidthItems().smallWidth,
      child: ElevatedButton(
        onPressed: _switchCase,
        child: Align(
          alignment: Alignment.center,
          child: setButtonText(text, iconX),
        ),
        style: ElevatedButton.styleFrom(
          elevation: _elevation,
          primary: _color,
          shadowColor: ColorItems().colorDarkGray,
          shape: RoundedRectangleBorder(borderRadius: _borderRadius),
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
