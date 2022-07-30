import 'package:flutter/material.dart';

class LoginPageViewOne extends StatefulWidget {
  const LoginPageViewOne({Key? key}) : super(key: key);

  @override
  State<LoginPageViewOne> createState() => _LoginPageViewOneState();
}

class _LoginPageViewOneState extends State<LoginPageViewOne> {
  final String _loginTitle = 'Login';
  final String _or = 'OR';
  late final double _screenWidth = MediaQuery.of(context).size.width;
  late final double _screenHeight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PaddingItems().paddingPage,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SignInTextButton(icon: AllIcons().iconApple),
                SignInTextButton(icon: AllIcons().iconFacebook),
              ],
            ),
            Padding(padding: PaddingItems().paddingNormal),
            Row(
              children: [
                Expanded(child: customDivider()),
                Text(_or, style: Theme.of(context).textTheme.subtitle2),
                Expanded(child: customDivider()),
              ],
            ),
            Padding(padding: PaddingItems().paddingNormal),
          ],
        ),
      ),
    );
  }

  Divider customDivider() {
    return Divider(
      color: AllColors().colorBlue,
      thickness: 1.5,
      indent: 8,
      endIndent: 8,
    );
  }
}

class SignInTextButton extends StatelessWidget {
  const SignInTextButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String _signInWith = 'Sign in with ';
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: _signInWith,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            WidgetSpan(child: AllIcons().iconApple),
          ],
        ),
      ),
      style: TextButton.styleFrom(
        side: BorderSide(
          style: BorderStyle.solid,
          color: AllColors().colorBlue,
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

class PaddingItems {
  EdgeInsets paddingPage = EdgeInsets.symmetric(
    vertical: PaddingValues().paddingPageVertical,
    horizontal: PaddingValues().paddingPageHorizontal,
  );
  EdgeInsets paddingNormal = EdgeInsets.symmetric(
    vertical: PaddingValues().paddingNormalVertical,
  );
}

class PaddingValues {
  final double paddingPageVertical = 60;
  final double paddingPageHorizontal = 40;
  final double paddingNormalVertical = 10;
}

class FontSizes {
  final double titleFontSize = 28;
  final double buttonFontSize = 14;
}

class AllColors {
  Color colorTransparent = Colors.transparent;
  Color colorBlack = Colors.black;
  Color colorWhite = Colors.white;
  Color colorOrangeAccent = Colors.orangeAccent;
  Color colorBlue = Colors.blue;
}

class AllIcons {
  Icon iconApple = const Icon(Icons.apple);
  Icon iconFacebook = const Icon(Icons.facebook);
}
