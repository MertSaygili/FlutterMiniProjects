import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class TopSnackbarApp extends StatefulWidget {
  const TopSnackbarApp({Key? key}) : super(key: key);

  @override
  State<TopSnackbarApp> createState() => _TopSnackbarAppState();
}

class _TopSnackbarAppState extends State<TopSnackbarApp> {
  final String _topSnackBarTitle = 'Top Snackbar App';
  final String _clickMe = 'Click me';
  final String _whyDidYouClicked = 'Why did you clicked me?';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_topSnackBarTitle), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _whySnackbar(context);
            _yeySnackBar(context);
          },
          child: Text(_clickMe),
        ),
      ),
    );
  }

  void _yeySnackBar(BuildContext context) {
    return showTopSnackBar(
      Overlay.of(context)!,
      CustomSnackBar.success(
        message: _whyDidYouClicked,
      ),
    );
  }

  void _whySnackbar(BuildContext context) {
    return showTopSnackBar(
      Overlay.of(context)!,
      CustomSnackBar.error(
        message: _whyDidYouClicked,
      ),
    );
  }
}
