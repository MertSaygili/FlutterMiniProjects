import 'package:flutter/material.dart';

import 'Data/data.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  @override
  Widget build(BuildContext context) {
    final Text _title = Text(
      Strings().loginText,
      style: Theme.of(context).textTheme.headline3,
    );

    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: PaddingItems().paddingPage,
          children: [
            _title,
          ],
        ),
      ),
    );
  }
}

class PaddingItems {
  final EdgeInsets paddingPage = EdgeInsets.symmetric(
    horizontal: PaddingValues().paddingPageHorizontal,
    vertical: PaddingValues().paddingPageVertical,
  );
}

class PaddingValues {
  final double paddingPageVertical = 30;
  final double paddingPageHorizontal = 30;
}
