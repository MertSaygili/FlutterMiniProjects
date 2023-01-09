// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'shared_manager.dart';

class PreferencesLoginPage extends StatefulWidget {
  const PreferencesLoginPage({Key? key}) : super(key: key);

  @override
  State<PreferencesLoginPage> createState() => _PreferencesLoginPageState();
}

class _PreferencesLoginPageState extends State<PreferencesLoginPage> {
  late final SharedManager _manager;
  String _currentEmail = '';
  String _currentPassword = '';
  String _oldEmail = '';
  String _oldPassword = '';

  @override
  void initState() {
    super.initState();
    _manager = SharedManager();
    _initialze();
  }

  Future<void> _initialze() async {
    await _manager.init();
    _getSavedValues();
  }

  Future<void> _getSavedValues() async {
    setState(() {
      _oldEmail = _manager.getString(SharedKeys.email) ?? '';
      _oldPassword = _manager.getString(SharedKeys.password) ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_Strings().title), centerTitle: true),
      body: Padding(
        padding: _CustomPaddings().pagePadding,
        child: ListView(
          children: [
            Padding(
              padding: _CustomPaddings().itemPadding,
              child: TextField(
                onChanged: (value) => setState(() => _currentEmail = value),
                decoration: _textFieldDecoration(_Strings().labelEmail),
              ),
            ),
            Padding(
              padding: _CustomPaddings().itemPadding,
              child: TextField(
                onChanged: (value) => setState(() => _currentPassword = value),
                decoration: _textFieldDecoration(_Strings().labelPassword),
              ),
            ),
            Padding(
              padding: _CustomPaddings().itemPadding,
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  child: Text(
                    _Strings().login,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: Colors.white),
                  ),
                  onPressed: () => _saveItems(),
                ),
              ),
            ),
            Padding(
              padding: _CustomPaddings().itemPadding,
              child: Text('email: $_oldEmail / password: $_oldPassword'),
            ),
          ],
        ),
      ),
    );
  }

  void _saveItems() async {
    await _manager.saveString(SharedKeys.email, _currentEmail);
    await _manager.saveString(SharedKeys.password, _currentPassword);
    await _manager.saveBool(SharedKeys.enter, true);
    print('Saved: $_currentEmail, $_currentPassword, true');
  }

  InputDecoration _textFieldDecoration(String val) {
    return InputDecoration(labelText: val);
  }
}

class _Strings {
  String title = 'Login Page';
  String labelEmail = 'Enter your email:';
  String labelPassword = 'Enter your password:';
  String login = 'LOGIN';
}

class _CustomPaddings {
  EdgeInsets pagePadding = const EdgeInsets.symmetric(
    vertical: _PaddingValues.pagePaddingVertical,
    horizontal: _PaddingValues.pagePaddingHorizontal,
  );
  EdgeInsets itemPadding = const EdgeInsets.only(
    top: _PaddingValues.pagePaddingVertical,
  );
}

class _PaddingValues {
  static const double pagePaddingHorizontal = 12;
  static const double pagePaddingVertical = 16;
}
