import 'package:flutter/material.dart';
import 'Data/data.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  final String _userNameHintText = 'Username';
  final String _userPasswordHintText = 'Password';
  final String _rememberMeText = 'Remember me';
  final String _forgotPassword = 'Forgot password ?';
  final String _loginText = 'Login';
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final Text _title = Text(
      Strings().loginText,
      style: Theme.of(context).textTheme.headline3,
    );
    final RichText _text = RichText(
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
    );
    final Padding _userName = Padding(
      padding: PaddingItems().paddingVerticalNormal,
      child: TextFormField(
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        decoration: textFieldInputDecoration(
          context,
          UsedIcons().iconPerson,
          _userNameHintText,
        ),
      ),
    );
    final Padding _userPassword = Padding(
      padding: PaddingItems().paddingVerticalNormal,
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
        decoration: textFieldInputDecoration(
          context,
          UsedIcons().iconLock,
          _userPasswordHintText,
        ),
      ),
    );
    final Padding _rememberMeAndForgotPassword = Padding(
      padding: PaddingItems().paddingVerticalNormal,
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
                  _rememberMeText,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Text(
                _forgotPassword,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ],
      ),
    );
    final ElevatedButton _loginButton = ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        elevation: 17,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
      child: Text(
        Strings().loginText.toUpperCase(),
        style: Theme.of(context).textTheme.labelMedium,
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
}

class PaddingValues {
  final double paddingPageVertical = 30;
  final double paddingPageHorizontal = 30;
  final double paddingNormalVertical = 20;
  final double paddingSmallVertical = 10;
}
