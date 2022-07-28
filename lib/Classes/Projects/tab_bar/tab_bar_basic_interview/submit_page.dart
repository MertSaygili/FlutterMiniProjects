import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview/experience_page.dart';

import 'data/strings.dart';

class SubmitPageView extends StatefulWidget {
  const SubmitPageView({Key? key, required this.controller}) : super(key: key);
  final TabController controller;

  @override
  State<SubmitPageView> createState() => _SubmitPageViewState();
}

class _SubmitPageViewState extends State<SubmitPageView> {
  final String _title = 'Please enter your email to submit your application.';
  final String _labelText = 'email';
  final int _emailLength = 28;
  String _keepEmailAlive = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PaddingItems().paddingPage,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              _title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            textField(),
            const Spacer(),
            CenteredElevatedButton(
              indexNumber: 0,
              controller: widget.controller,
              text: Strings().submit,
              email: _keepEmailAlive,
            ),
          ],
        ),
      ),
    );
  }

  TextField textField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      maxLength: _emailLength,
      decoration: InputDecoration(labelText: _labelText),
      onChanged: (value) {
        setState(() {
          _keepEmailAlive = value;
        });
      },
    );
  }
}
