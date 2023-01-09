import 'package:flutter/material.dart';

import 'login_page.dart';
import 'open_page.dart';
import 'shared_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final SharedManager _manager;
  final int _seconds = 3;
  bool _check = false;

  @override
  void initState() {
    _manager = SharedManager();
    _initialze();
    Future.delayed(Duration(seconds: _seconds), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return _check ? const FirstPage() : const PreferencesLoginPage();
      }));
    });
    super.initState();
  }

  Future<void> _initialze() async {
    await _manager.init();
    _getPreferencesValues();
  }

  Future<void> _getPreferencesValues() async {
    String email = '';
    String password = '';
    bool enter = false;

    setState(() {
      email = _manager.getString(SharedKeys.email) ?? '';
      password = _manager.getString(SharedKeys.password) ?? '';
      enter = _manager.getBool(SharedKeys.enter) ?? false;
    });

    print('email: $email, password: $password, enter: $enter');
    _checkValidation(email, password, enter);
  }

  void _checkValidation(String email, String password, bool enter) {
    if (enter) {
      setState(() {
        _check = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            'https://img.freepik.com/free-vector/access-control-system-abstract-concept_335657-3180.jpg?w=740&t=st=1673298129~exp=1673298729~hmac=55735fc10f2fc550856b16db6fa45b2aec1fec65a4b48eacd338bbbec9ca6e32'),
      ),
    );
  }
}
