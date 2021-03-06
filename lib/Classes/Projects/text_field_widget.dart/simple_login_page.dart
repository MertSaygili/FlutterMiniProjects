import 'package:flutter/material.dart';

class SimpleLoginPage extends StatefulWidget {
  const SimpleLoginPage({Key? key}) : super(key: key);

  @override
  State<SimpleLoginPage> createState() => _SimpleLoginPageState();
}

class _SimpleLoginPageState extends State<SimpleLoginPage> {
  final _isObscure = true;
  final TextInputType _keyboardEmail = TextInputType.emailAddress;
  final TextInputType _keyboardPassword = TextInputType.number;
  final TextInputAction _actionEmail = TextInputAction.next;
  final TextInputAction _actionPassword = TextInputAction.go;
  final int _maxLengthEmail = 30;
  final int _maxLengthPassword = 16;
  final String _hintTextEmail = 'user@gmail.com';
  final String _hintTextPassword = 'password';
  final String _labelTextEmail = 'mail';
  final String _labelTextPassword = 'password';
  final String _signInButtonText = 'Sign in';

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
              isObscure: _isObscure,
              length: _maxLengthEmail,
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
              isObscure: _isObscure,
              length: _maxLengthPassword,
            ),
          ),
          Padding(
            padding: PaddingItems().paddingPasswordTextField,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(_signInButtonText),
                ),
              ],
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
    required this.length,
  }) : super(key: key);

  final TextInputType keyboard;
  final TextInputAction action;
  final String hintText;
  final String labelText;
  final Icon icon;
  final int length;
  final bool isObscure;

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
      maxLength: widget.length,
      keyboardType: widget.keyboard,
      textAlign: TextAlign.start,
      textInputAction: widget.action,
      autofocus: true,
      obscureText: _isObscure,
      /*
      buildCounter: (BuildContext context,
          {int? currentLength, bool? isFocused, int? maxLength}) {
        return _animatedContainer(currentLength);
      },
      */
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
  /*
  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: UniqueKey(),
      duration: const Duration(seconds: 1),
      height: 10,
      width: 40.0 * (currentLength?.toDouble() ?? 0),
      color: Colors.green[100 * (currentLength ?? 0)],
    );
  }
  */

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
  final double paddingTopMax = 90;
  final double paddingTopNormal = 3;
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
