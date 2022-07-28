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
        padding: PaddingItems().paddingPage,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_title, style: Theme.of(context).textTheme.subtitle1),
            checkBox(_checkBoxOptionOne),
            checkBox(_checkBoxOptionTwo),
            checkBox(_checkBoxOptionThree),
            checkBox(_checkBoxOptionFour),
            const Spacer(),
            CenteredElevatedButton(
              indexNumber: 1,
              controller: widget.controller,
              text: Strings().next,
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
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      value: false,
      onChanged: (bool? newValue) {},
    );
  }
}

class CenteredElevatedButton extends StatelessWidget {
  const CenteredElevatedButton({
    Key? key,
    required this.indexNumber,
    required this.controller,
    required this.text,
    this.email,
  }) : super(key: key);

  final int indexNumber;
  final TabController controller;
  final String text;
  final String? email;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(padding: PaddingItems().paddingButton),
        onPressed: () {
          if (text.compareTo('Next') == 0) {
            controller.animateTo(indexNumber);
          } else {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alertDialog(context);
              },
            );
          }
        },
        child: Text(text, style: Theme.of(context).textTheme.subtitle1),
      ),
    );
  }

  AlertDialog alertDialog(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Thank you',
        style: Theme.of(context).textTheme.subtitle2,
      ),
      content: Text(
        'Your application was submitted.',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'Ok');
          },
          child: const Text('Ok'),
        )
      ],
    );
  }
}

class PaddingItems {
  EdgeInsets paddingButton = EdgeInsets.symmetric(
    vertical: PaddingValues().paddingButtonVertical,
    horizontal: PaddingValues().paddingButtonHorizontal,
  );
  EdgeInsets paddingPage = EdgeInsets.symmetric(
    vertical: PaddingValues().paddingPageVertical,
    horizontal: PaddingValues().paddingPageHorizontal,
  );
}

class PaddingValues {
  final double paddingButtonVertical = 15;
  final double paddingButtonHorizontal = 160;

  final double paddingPageVertical = 24;
  final double paddingPageHorizontal = 18;
}
