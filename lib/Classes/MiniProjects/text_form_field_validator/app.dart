import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/card_widget/spotify_card_widget.dart';

class TextFormFieldValidatorApp extends StatefulWidget {
  const TextFormFieldValidatorApp({Key? key}) : super(key: key);

  @override
  State<TextFormFieldValidatorApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TextFormFieldValidatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(_Strings().appBarTitle)),
      body: ListView(
        padding: PaddingItems().paddingPageNormal,
        children: [
          _paddingItem(
            TextFormField(
              decoration:
                  _Decoration()._decorationTextfield(_Strings().labelName),
            ),
          ),
          _paddingItem(
            TextFormField(
              decoration:
                  _Decoration()._decorationTextfield(_Strings().labelEmail),
            ),
          ),
          _paddingItem(
            TextFormField(
              decoration:
                  _Decoration()._decorationTextfield(_Strings().labelPassword),
            ),
          ),
          _paddingItem(
            SizedBox(
              height: _Doubles().heightMid,
              child: ElevatedButton(
                child: Text(_Strings().buttonLogin),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding _paddingItem(Widget child) {
    return Padding(
      padding: _PaddingItems().paddingItem,
      child: child,
    );
  }
}

class _Doubles {
  final double heightMid = 48;
}

class _Strings {
  final String appBarTitle = 'TextFormField Validator';
  final String labelName = 'Enter nickname';
  final String labelEmail = 'Enter email';
  final String labelPassword = 'Enter password';
  final String buttonLogin = 'Sign up';
}

class _Decoration {
  InputDecoration _decorationTextfield(String labelText) {
    return InputDecoration(
      labelText: labelText,
      border: const OutlineInputBorder(),
    );
  }
}

class _PaddingItems {
  final EdgeInsets paddingPage = EdgeInsets.symmetric(
    vertical: _PaddingValues().paddingVerticalItem,
    horizontal: _PaddingValues().paddingHorizontalPage,
  );

  final EdgeInsets paddingItem = EdgeInsets.only(
    top: _PaddingValues().paddingVerticalItem,
  );
}

class _PaddingValues {
  final double paddingHorizontalPage = 16.0;
  final double paddingVerticalPage = 24;
  final double paddingVerticalItem = 16;
}
