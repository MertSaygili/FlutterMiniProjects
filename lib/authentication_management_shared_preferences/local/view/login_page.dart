import 'package:flutter/material.dart';
import '../shared/shared_preferences_manager.dart';
import 'main_page.dart';

class LoginPageSharedManagement extends StatefulWidget {
  const LoginPageSharedManagement({Key? key}) : super(key: key);

  @override
  State<LoginPageSharedManagement> createState() =>
      _LoginPageSharedManagementState();
}

class _LoginPageSharedManagementState extends State<LoginPageSharedManagement> {
  late final SharedManager _sharedManager;
  final String _title = 'Login Page';
  String _email = '';
  String _password = '';

  @override
  void initState() {
    super.initState();
    _asycnMethod();
  }

  void _asycnMethod() async {
    _sharedManager = SharedManager();
    await _sharedManager.init();
    final result = await _sharedManager.getBool(SharedKeys.hasUserEnter);
    final result1 = await _sharedManager.getString(SharedKeys.email);
    final result2 = await _sharedManager.getString(SharedKeys.password);
    setState(() {});

    print(result);
    print(result1);
    print(result2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            onChangedFun: _setEmail,
            labelText: 'Enter email',
            errorText: 'Wrong email',
          ),
          CustomTextField(
            onChangedFun: _setPassword,
            labelText: 'Enter password',
            errorText: 'Wrong password',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _saveUser();
        },
        child: const Icon(Icons.save),
      ),
    );
  }

  void _setEmail(String email) => setState(() => _email = email);
  void _setPassword(String password) => setState(() => _password = password);

  bool _checkUserInformation() {
    Regex regex = Regex();

    if (regex.emailValid(_email) && _password != '') {
      print('sdas');
      return true;
    } else {
      print('asssss');
      return false;
    }
  }

  void _saveUser() {
    if (_checkUserInformation()) {
      _sharedManager.setString(SharedKeys.email, _email);
      _sharedManager.setString(SharedKeys.password, _password);
      _sharedManager.setBool(SharedKeys.hasUserEnter, true);
      print('okey');
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const MainPageView();
      }));
    } else {}
  }
}

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.onChangedFun,
    required this.labelText,
    required this.errorText,
    this.validateFun,
  }) : super(key: key);

  final Function onChangedFun;
  final Function? validateFun;
  final String labelText;
  final String errorText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        widget.onChangedFun(value);
      },
      autovalidateMode: AutovalidateMode.always,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        labelText: widget.labelText,
        errorText: _validate ? widget.errorText : null,
        errorBorder: _validate
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.red),
              )
            : null,
      ),
    );
  }
}

class Regex {
  bool emailValid(String text) {
    bool validation = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(text); // checks the text is email or username

    return validation;
  }
}
