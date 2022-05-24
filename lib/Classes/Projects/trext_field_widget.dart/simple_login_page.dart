import 'package:flutter/material.dart';

class SimpleLoginPage extends StatefulWidget {
  const SimpleLoginPage({Key? key}) : super(key: key);

  @override
  State<SimpleLoginPage> createState() => _SimpleLoginPageState();
}

class _SimpleLoginPageState extends State<SimpleLoginPage> {
  final _isObsecure = false;
  final TextInputType _keyboardEmail = TextInputType.emailAddress;
  final TextInputType _keyboardPassword = TextInputType.number;
  final TextInputAction _actionEmail = TextInputAction.next;
  final TextInputAction _actionPassword = TextInputAction.go;
  final String _hintTextEmail = 'user@gmail.com';
  final String _hintTextPassword = 'password';
  final String _labelTextEmail = 'mail';
  final String _labelTextPassword = 'password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: PaddingItems().paddingEmailTextField,
            child: TextFieldForm(
              keyboard: _keyboardEmail,
              action: _actionEmail,
              hintText: _hintTextEmail,
              labelText: _labelTextEmail,
              icon: IconItems().iconEmailRounded,
              isObscure: true,
            ),
          ),
          Padding(
            padding: PaddingItems().paddingPasswordTextField,
            child: TextFieldForm(
              keyboard: _keyboardPassword,
              action: _actionPassword,
              hintText: _hintTextPassword,
              labelText: _labelTextPassword,
              icon: IconItems().iconKey,
              isObscure: _isObsecure,
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldForm extends StatefulWidget {
  const TextFieldForm({
    Key? key,
    required this.keyboard,
    required this.action,
    required this.hintText,
    required this.labelText,
    required this.icon,
    required this.isObscure,
  }) : super(key: key);

  final TextInputType keyboard;
  final TextInputAction action;
  final String hintText;
  final String labelText;
  final Icon icon;
  // ignore: prefer_typing_uninitialized_variables
  final isObscure;

  @override
  State<TextFieldForm> createState() => _TextFieldFormState();
}

class _TextFieldFormState extends State<TextFieldForm> {
  bool _isObscure = true;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboard,
      textAlign: TextAlign.start,
      textInputAction: widget.action,
      autofocus: true,
      obscureText: _isObscure,
      decoration: InputDecoration(
        border: BorderSettings().textFieldBorder(),
        prefixIcon: widget.icon,
        suffixIcon: visibilityOfPassword(),
        hintText: widget.hintText,
        labelText: widget.labelText,
        labelStyle: LabelStyle().labelStyleTextField(),
        fillColor: Theme.of(context).colorScheme.onBackground,
      ),
    );
  }

  IconButton? visibilityOfPassword() {
    if (widget.hintText == 'password') {
      return visibilityIcon();
    }
    return null;
  }

  IconButton visibilityIcon() {
    return IconButton(
      icon: _isObscure
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      onPressed: () {
        setState(() {
          _isObscure = !_isObscure;
        });
      },
    );
  }
}

class BorderSettings {
  OutlineInputBorder textFieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    );
  }
}

class PaddingItems {
  final EdgeInsets paddingEmailTextField = EdgeInsets.only(
    top: PaddingValues().paddingTopMax,
    left: PaddingValues().paddingSideTextField,
    right: PaddingValues().paddingSideTextField,
  );
  final EdgeInsets paddingPasswordTextField = EdgeInsets.only(
    top: PaddingValues().paddingTopNormal,
    left: PaddingValues().paddingSideTextField,
    right: PaddingValues().paddingSideTextField,
  );
}

class PaddingValues {
  final double paddingTopMax = 130;
  final double paddingTopNormal = 15;
  final double paddingBottomNormal = 10;
  final double paddingSideTextField = 10;
}

class IconItems {
  final Icon iconEmailRounded = const Icon(Icons.email_rounded);
  final Icon iconKey = const Icon(Icons.key);
}

class LabelStyle {
  TextStyle labelStyleTextField() {
    return TextStyle(
      color: Colors.blue[700],
      fontWeight: FontWeight.bold,
      fontSize: 18,
    );
  }
}
