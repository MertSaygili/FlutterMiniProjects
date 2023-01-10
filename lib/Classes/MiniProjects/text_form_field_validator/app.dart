import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/card_widget/spotify_card_widget.dart';

class TextFormFieldValidatorApp extends StatefulWidget {
  const TextFormFieldValidatorApp({Key? key}) : super(key: key);

  @override
  State<TextFormFieldValidatorApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TextFormFieldValidatorApp> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submit() {
    if (_key.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(_Strings().appBarTitle)),
      body: Form(
        key: _key,
        child: ListView(
          padding: PaddingItems().paddingPageNormal,
          children: [
            _paddingItem(
              TextFormField(
                controller: _nicknameController,
                decoration: _Decoration()
                    ._decorationTextfield(_Strings().labelNickname),
              ),
            ),
            _paddingItem(
              TextFormField(
                controller: _emailController,
                decoration:
                    _Decoration()._decorationTextfield(_Strings().labelEmail),
                validator: validateEmail,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            _paddingItem(
              TextFormField(
                controller: _passwordController,
                decoration: _Decoration()
                    ._decorationTextfield(_Strings().labelPassword),
              ),
            ),
            _paddingItem(
              SizedBox(
                height: _Doubles().heightMid,
                child: ElevatedButton(
                  onPressed: _submit,
                  child: Text(_Strings().buttonLogin),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  String? validateEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!))
      return 'Enter Valid Email';
    else
      return null;
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
  final String labelNickname = 'Enter nickname';
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
