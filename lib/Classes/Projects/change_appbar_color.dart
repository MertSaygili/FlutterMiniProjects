import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChangeAppBarColor extends StatefulWidget {
  const ChangeAppBarColor({Key? key}) : super(key: key);

  @override
  State<ChangeAppBarColor> createState() => _ChangeAppBarColorState();
}

class _ChangeAppBarColorState extends State<ChangeAppBarColor> {
  final ColorItems colorItems = ColorItems();
  final String _appBarTitle = "Change AppBar Color";
  final String _changeToRed = "Change to Red";
  final String _changeToGreen = "Change to Green";
  final String _changeToYellow = "Change to Yellow";
  final String _changeToBlue = "Change to Blue";
  final String _changeToPink = "Change to Pink";
  final String _changeToPurple = "Change to Purple";
  final String _changeToTeal = "Change to Teal";
  final String _changeToOrange = "Change to Orange";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorItems._colorAppBarTemp,
        title: Center(child: Text(_appBarTitle)),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingSettings().paddingPage,
        child: Center(
          child: Column(
            children: [
              _setElevatedButton(colorItems._colorRed, _changeToRed),
              _setElevatedButton(colorItems._colorGreen, _changeToGreen),
              _setElevatedButton(colorItems._colorYellow, _changeToYellow),
              _setElevatedButton(colorItems._colorBlue, _changeToBlue),
              _setElevatedButton(colorItems._colorPink, _changeToPink),
              _setElevatedButton(colorItems._colorPurple, _changeToPurple),
              _setElevatedButton(colorItems._colorTeal, _changeToTeal),
              _setElevatedButton(colorItems._colorOrange, _changeToOrange),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _setElevatedButton(Color color, String text) {
    return SizedBox(
      width: SizedBoxSettings().widthWide,
      child: ElevatedButton(
        onPressed: () {
          _changeColor(color);
        },
        child: Text(text),
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: colorItems._colorWhite,
        ),
      ),
    );
  }

  void _changeColor(Color newAppBarColor) {
    setState(() {
      colorItems._colorAppBarTemp = newAppBarColor;
    });
  }
}

class ColorItems {
  final Color _colorRed = Colors.red;
  final Color _colorBlue = Colors.blue;
  final Color _colorGreen = Colors.green;
  final Color _colorTeal = Colors.teal;
  final Color _colorPink = Colors.pink;
  final Color _colorPurple = Colors.purple;
  final Color _colorOrange = Colors.orange;
  final Color _colorYellow = Colors.yellow;
  final Color _colorWhite = Colors.white;
  Color _colorAppBarTemp = Colors.blue;
}

class PaddingSettings {
  final EdgeInsets paddingPage = EdgeInsets.symmetric(
      vertical: PaddingItems().normalVertical,
      horizontal: PaddingItems().normalHorizontal);
}

class PaddingItems {
  final double normalVertical = 55;
  final double normalHorizontal = 10;
}

class SizedBoxSettings {
  final double widthWide = 400;
}
