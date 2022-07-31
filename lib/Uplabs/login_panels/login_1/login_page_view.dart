import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: PaddingItems().paddingPage,
          children: const [
            Text('data'),
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
