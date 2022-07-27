import 'package:flutter/material.dart';

import 'data/strings.dart';

class ExperiencePageView extends StatefulWidget {
  const ExperiencePageView({Key? key, required this.controller})
      : super(key: key);
  final TabController controller;

  @override
  State<ExperiencePageView> createState() => _ExperiencePageViewState();
}

class _ExperiencePageViewState extends State<ExperiencePageView> {
  final String _title = 'How many years of experience do you have?';
  final String _checkBoxOptionOne = 'Less than one year';
  final String _checkBoxOptionTwo = 'One to three years';
  final String _checkBoxOptionThree = 'Three to five years';
  final String _checkBoxOptionFour = 'Over five years';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_title, style: Theme.of(context).textTheme.subtitle1),
            checkBox(_checkBoxOptionOne),
            checkBox(_checkBoxOptionTwo),
            checkBox(_checkBoxOptionThree),
            checkBox(_checkBoxOptionFour),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: PaddingItems().paddingButton,
                ),
                onPressed: () {
                  widget.controller.animateTo(1);
                },
                child: Text(
                  Strings().next,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  CheckboxListTile checkBox(String text) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(
        text,
        style: Theme.of(context).textTheme.subtitle2,
      ),
      value: false,
      onChanged: (bool? newValue) {},
    );
  }
}

class PaddingItems {
  EdgeInsets paddingButton = EdgeInsets.symmetric(
    vertical: PaddingValues().paddingButtonVertical,
    horizontal: PaddingValues().paddingButtonHorizontal,
  );
}

class PaddingValues {
  final double paddingButtonVertical = 15;
  final double paddingButtonHorizontal = 165;
}
