import 'package:flutter/material.dart';

class LoginPageViewOne extends StatefulWidget {
  const LoginPageViewOne({Key? key}) : super(key: key);

  @override
  State<LoginPageViewOne> createState() => _LoginPageViewOneState();
}

class _LoginPageViewOneState extends State<LoginPageViewOne> {
  final String _loginTitle = 'Login';
  late final double _screenWidth = MediaQuery.of(context).size.width;
  late final double _screenHeight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 40),
        child: Column(
          children: [
            Stack(
              children: [
                CircleContainer(
                  height: _screenHeight / 6,
                  width: _screenWidth,
                  color: AllColors().colorTransparent,
                ),
                PositionedCircleContainer(
                  screenWidth: _screenWidth,
                  top: 0,
                  left: _screenWidth / 3,
                  height: 80,
                  width: 4,
                  color: AllColors().colorOrangeAccent,
                ),
                PositionedCircleContainer(
                  screenWidth: _screenWidth,
                  top: 5,
                  left: _screenWidth / 8,
                  height: 90,
                  width: 2,
                  color: AllColors().colorBlue,
                ),
                Positioned(
                  // text
                  top: _screenHeight / 24,
                  left: _screenWidth / 3.1,
                  child: Text(_loginTitle,
                      style: Theme.of(context).textTheme.headline5),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PositionedCircleContainer extends StatelessWidget {
  const PositionedCircleContainer({
    Key? key,
    required double screenWidth,
    required this.top,
    required this.left,
    required this.height,
    required this.color,
    required this.width,
  })  : _screenWidth = screenWidth,
        super(key: key);

  final double _screenWidth;
  final double height;
  final double top;
  final double left;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: CircleContainer(
        height: height,
        width: _screenWidth / width,
        color: color,
      ),
    );
  }
}

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
  }) : super(key: key);

  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

class FontSizes {
  final double titleFontSize = 28;
}

class AllColors {
  Color colorTransparent = Colors.transparent;
  Color colorWhite = Colors.white;
  Color colorOrangeAccent = Colors.orangeAccent;
  Color colorBlue = Colors.blue;
}
