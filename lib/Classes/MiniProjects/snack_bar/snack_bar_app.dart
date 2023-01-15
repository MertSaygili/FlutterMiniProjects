import 'package:flutter/material.dart';

class SnackBarApp extends StatefulWidget {
  const SnackBarApp({Key? key}) : super(key: key);

  @override
  State<SnackBarApp> createState() => _SnackBarAppState();
}

class _SnackBarAppState extends State<SnackBarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_Strings()._appbarTitle), centerTitle: true),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: Text(_Strings()._buttonText),
              onPressed: () {
                final response = Snackbars().clickMe;
                ScaffoldMessenger.of(context).showSnackBar(response);
              },
            ),
            ElevatedButton(
              child: Text(_Strings()._donotClick),
              onPressed: () {
                final response = Snackbars()._dontClickMe;
                ScaffoldMessenger.of(context).showSnackBar(response);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _Strings {
  final String _appbarTitle = 'Snackbar';
  final String _buttonText = 'Click me';
  final String _donotClick = 'Do not click me!';
  final String _snackbarText = "I'm snack bar!";
  final String _snackbarAngry = 'You fuck!';
  final String _snackbarLabel = 'Why?';
}

class Snackbars {
  final SnackBar clickMe = SnackBar(
    content: Text(_Strings()._snackbarText),
    action: SnackBarAction(
      label: _Strings()._snackbarLabel,
      onPressed: () {},
    ),
  );

  final SnackBar _dontClickMe = SnackBar(
    content: Text(_Strings()._donotClick),
    dismissDirection: DismissDirection.up,
    backgroundColor: Colors.red,
  );
}
