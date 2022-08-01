import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'Data/data.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final Text _title = Text(
      Strings().loginText,
      style: Theme.of(context).textTheme.headline3,
    );
    final Padding _text = Padding(
      padding: PaddingItems().paddingVerticalSmall,
      child: RichText(
        maxLines: 2,
        text: TextSpan(
          children: [
            TextSpan(
              text: Strings().subtitleTextPart_1,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            WidgetSpan(
              child: GestureDetector(
                onTap: () {},
                child: Text(Strings().subtitleTextPart_2),
              ),
            ),
            TextSpan(
              text: Strings().subtitleTextPart_3,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
    final Padding _userName = Padding(
      padding: PaddingItems().paddingVerticalNormal,
      child: TextFormField(
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        decoration: textFieldInputDecoration(
          context,
          UsedIcons().iconPerson,
          Strings().userNameHintText,
        ),
      ),
    );
    final Padding _userPassword = Padding(
      padding: PaddingItems().paddingVerticalSmall,
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
        decoration: textFieldInputDecoration(
          context,
          UsedIcons().iconLock,
          Strings().userPasswordHintText,
        ),
      ),
    );
    final Padding _rememberMeAndForgotPassword = Padding(
      padding: PaddingItems().paddingVerticalSmall,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              child: CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                value: _rememberMe,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool? value) {
                  _changeRememberMeButton();
                },
                title: Text(
                  Strings().rememberMeText,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Text(
                Strings().forgotPassword,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ],
      ),
    );
    final Row _loginButton = Row(
      children: [
        Padding(
          padding: PaddingItems().paddingVerticalNormal,
          child: SizedBox(
            height: 60,
            width: 150,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                Strings().loginText.toUpperCase(),
                style: Theme.of(context).textTheme.labelMedium,
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
    final Padding _otherLoginOptions = Padding(
      padding: PaddingItems().paddingVerticalHigh,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              Strings().orLoginWith,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Row(
            children: [
              SignInButton(Buttons.Facebook, onPressed: () {}, mini: true),
              SignInButton(Buttons.Twitter, onPressed: () {}, mini: true),
              SignInButton(Buttons.GitHub, onPressed: () {}, mini: true),
            ],
          )
        ],
      ),
    );
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: PaddingItems().paddingPage,
          children: [
            _title,
            _text,
            _userName,
            _userPassword,
            _rememberMeAndForgotPassword,
            _loginButton,
            _otherLoginOptions,
          ],
        ),
      ),
    );
  }

  InputDecoration textFieldInputDecoration(
      BuildContext context, Icon icon, String hintText) {
    return InputDecoration(
      suffixIcon: icon,
      hintText: hintText,
      hintStyle: Theme.of(context).textTheme.button,
    );
  }

  void _changeRememberMeButton() {
    setState(() {
      _rememberMe = !_rememberMe;
    });
  }
}

class UsedIcons {
  Icon iconPerson = const Icon(Icons.person);
  Icon iconLock = const Icon(Icons.lock);
}

class PaddingItems {
  final EdgeInsets paddingPage = EdgeInsets.symmetric(
    horizontal: PaddingValues().paddingPageHorizontal,
    vertical: PaddingValues().paddingPageVertical,
  );

  final EdgeInsets paddingVerticalNormal = EdgeInsets.only(
    top: PaddingValues().paddingNormalVertical,
  );

  final EdgeInsets paddingVerticalSmall = EdgeInsets.only(
    top: PaddingValues().paddingSmallVertical,
  );
  final EdgeInsets paddingVerticalHigh = EdgeInsets.only(
    top: PaddingValues().paddingHighVertical,
    left: PaddingValues().paddingSmallHorizontal,
  );
}

class PaddingValues {
  final double paddingHighVertical = 50;
  final double paddingPageVertical = 30;
  final double paddingPageHorizontal = 30;
  final double paddingNormalVertical = 20;
  final double paddingSmallVertical = 10;
  final double paddingSmallHorizontal = 8;
}
