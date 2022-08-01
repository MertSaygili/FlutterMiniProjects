import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Uplabs/login_panels/login_0/login_page_view.dart';

import 'Data/data.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  final String _userNameHintText = 'Username';
  final String _userPasswordHintText = 'Password';

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
        decoration: InputDecoration(
          suffixIcon: UsedIcons().iconPerson,
          hintText: _userNameHintText,
          hintStyle: Theme.of(context).textTheme.button,
        ),
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
          ],
        ),
      ),
    );
  }
}

class UsedIcons {
  Icon iconPerson = const Icon(Icons.person);
  Icon iconPassword = const Icon(Icons.lock);
}

class PaddingItems {
  final EdgeInsets paddingPage = EdgeInsets.symmetric(
    horizontal: PaddingValues().paddingPageHorizontal,
    vertical: PaddingValues().paddingPageVertical,
  );

  final EdgeInsets paddingVerticalNormal = EdgeInsets.only(
    top: PaddingValues().paddingNormalVertical,
  );
}

class PaddingValues {
  final double paddingPageVertical = 30;
  final double paddingPageHorizontal = 30;
  final double paddingNormalVertical = 20;
}
