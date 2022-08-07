import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Uplabs/login_panels/login_2/theme/theme.dart';
import 'Data/data.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String _currentImagePath;
  late String _currentTitle;

  @override
  void initState() {
    super.initState();
    _currentImagePath = ImagePaths().nightLoginMode;
    _currentTitle = Strings().titleGoodNight;
  }

  @override
  Widget build(BuildContext context) {
    final Row _changeModButtons = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton(
          style: _buttonStyle(Strings().titleGoodMorning),
          onPressed: () {
            _changeToMorningMode();
          },
          child: Text(
            Strings().morningLoginButton,
            style: TextStyle(
              fontSize: FontSizes().medium,
              letterSpacing: -2,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ElevatedButton(
          style: _buttonStyle(Strings().titleGoodNight),
          onPressed: () {
            _changeToNightMode();
          },
          child: Text(
            Strings().nightLoginButton,
            style: TextStyle(
              fontSize: FontSizes().medium,
              letterSpacing: -2,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
    final Padding _title = Padding(
      padding: PaddingItems().paddingVerticalNormal,
      child: Text(
        _currentTitle,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
    final Padding _subTitle = Padding(
      padding: PaddingItems().paddingVerticalSmall,
      child: Text(
        Strings().subtitle,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
    final Padding _userName = Padding(
      padding: PaddingItems().paddingVerticalNormal,
      child: ListTile(
        title: Text(
          Strings().phoneNumberLabel,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        contentPadding: EdgeInsets.zero,
        subtitle: TextFormField(
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
          autocorrect: true,
          decoration: InputDecoration(
            semanticCounterText: Strings().phoneNumberLabel,
            hintText: Strings().phoneNumberLabel,
            hintStyle: Theme.of(context).textTheme.subtitle1,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AllColors().darkGray)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
    final Padding _userPassword = Padding(
      padding: PaddingItems().paddingVerticalNormal,
      child: ListTile(
        title: Text(
          Strings().passwordLabel,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        contentPadding: EdgeInsets.zero,
        subtitle: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          autocorrect: true,
          obscureText: true,
          decoration: InputDecoration(
            semanticCounterText: Strings().passwordLabel,
            hintText: Strings().passwordLabel,
            hintStyle: Theme.of(context).textTheme.subtitle1,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AllColors().black)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
    final Padding _nextButton = Padding(
      padding: PaddingItems().paddingVerticalHigh,
      child: Align(
        alignment: Alignment.centerRight,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AllColors().white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Icon(
            Icons.arrow_right_alt_outlined,
            size: 60,
            color: AllColors().black,
          ),
        ),
      ),
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_currentImagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: PaddingItems().paddingPage,
          child: ListView(
            children: [
              _changeModButtons,
              _title,
              _subTitle,
              _userName,
              _userPassword,
              _nextButton,
            ],
          ),
        ),
      ),
    );
  }

  ButtonStyle _buttonStyle(String title) {
    if (_currentTitle.compareTo(title) == 0) {
      // this is for active login mode
      return ElevatedButton.styleFrom(
        primary: AllColors().white,
        onPrimary: AllColors().black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        animationDuration: const Duration(milliseconds: 500),
      );
    } else {
      return ElevatedButton.styleFrom(
        primary: AllColors().transparent,
        onPrimary: AllColors().white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        animationDuration: const Duration(milliseconds: 500),
      );
    }
  }

  void _changeToMorningMode() {
    setState(() {
      _currentImagePath = ImagePaths().morningLoginMode;
      _currentTitle = Strings().titleGoodMorning;
    });
  }

  void _changeToNightMode() {
    setState(() {
      _currentImagePath = ImagePaths().nightLoginMode;
      _currentTitle = Strings().titleGoodNight;
    });
  }
}

class PaddingItems {
  final EdgeInsets paddingPage = EdgeInsets.symmetric(
    horizontal: PaddingValues().paddingPageHorizontal,
    vertical: PaddingValues().paddingPageVertical,
  );

  final EdgeInsets paddingVerticalNormal = EdgeInsets.only(
    top: PaddingValues().paddingNormalVertical,
    left: PaddingValues().paddingSmallHorizontal,
  );

  final EdgeInsets paddingVerticalSmall = EdgeInsets.only(
    top: PaddingValues().paddingSmallVertical,
    left: PaddingValues().paddingSmallHorizontal,
  );
  final EdgeInsets paddingVerticalHigh = EdgeInsets.only(
    top: PaddingValues().paddingHighVertical,
    left: PaddingValues().paddingSmallHorizontal,
  );
}

class PaddingValues {
  final double paddingHighVertical = 50;
  final double paddingPageVertical = 40;
  final double paddingPageHorizontal = 40;
  final double paddingNormalVertical = 20;
  final double paddingSmallVertical = 10;
  final double paddingSmallHorizontal = 3;
}
