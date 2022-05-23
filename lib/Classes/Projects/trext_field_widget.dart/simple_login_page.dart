import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SimpleLoginPage extends StatefulWidget {
  const SimpleLoginPage({Key? key}) : super(key: key);

  @override
  State<SimpleLoginPage> createState() => _SimpleLoginPageState();
}

class _SimpleLoginPageState extends State<SimpleLoginPage> {
  bool _isObscure = true;
  final TextInputType keyboardEmail = TextInputType.emailAddress;
  final TextInputType keyboardPassword = TextInputType.number;
  final TextInputAction actionEmail = TextInputAction.next;
  final TextInputAction actionPassword = TextInputAction.go;
  final String hintTextEmail = 'user@gmail.com';
  final String hintTextPassword = 'password';
  final String labelTextEmail = 'mail';
  final String labelTextPassword = 'password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: PaddingItems().paddingEmailTextField,
            child: TextFieldForm(
              keyboardEmail: keyboardEmail,
              actionEmail: actionEmail,
              hintTextEmail: hintTextEmail,
              labelTextEmail: labelTextEmail,
              icon: IconItems().iconEmailRounded,
            ),
          ),
          Padding(
            padding: PaddingItems().paddingPasswordTextField,
            child: TextFieldForm(
              keyboardEmail: keyboardPassword,
              actionEmail: actionPassword,
              hintTextEmail: hintTextPassword,
              labelTextEmail: labelTextPassword,
              icon: IconItems().iconKey,
            ),
          ),
          /*
          Padding(
            padding: PaddingItems().paddingPasswordTextField,
            child: TextField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: keyboardPassword,
              textInputAction: actionPassword,
              textAlign: TextAlign.start,
              obscureText: _isObscure,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: VisibilityOfPassword(),
                prefixIcon: IconItems().iconKey,
                hintText: hintTextPassword,
                labelText: labelTextPassword,
                labelStyle: labelStyleTextField(),
              ),
            ),
          ),
        */
        ],
      ),
    );
  }

  IconButton VisibilityOfPassword() {
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

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    Key? key,
    required this.keyboardEmail,
    required this.actionEmail,
    required this.hintTextEmail,
    required this.labelTextEmail,
    required this.icon,
  }) : super(key: key);

  final TextInputType keyboardEmail;
  final TextInputAction actionEmail;
  final String hintTextEmail;
  final String labelTextEmail;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardEmail,
      textAlign: TextAlign.start,
      textInputAction: actionEmail,
      autofocus: true,
      decoration: InputDecoration(
        border: BorderSettings().textFieldBorder(),
        prefixIcon: icon,
        hintText: hintTextEmail,
        labelText: labelTextEmail,
        labelStyle: LabelStyle().labelStyleTextField(),
        fillColor: Theme.of(context).colorScheme.onBackground,
      ),
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
  final double paddingTopMax = 200;
  final double paddingTopNormal = 10;
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
