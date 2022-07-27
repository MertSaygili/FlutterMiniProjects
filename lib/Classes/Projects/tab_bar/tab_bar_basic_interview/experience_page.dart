import 'package:flutter/material.dart';

class ExperiencePageView extends StatefulWidget {
  const ExperiencePageView({Key? key, required this.controller})
      : super(key: key);
  final TabController controller;

  @override
  State<ExperiencePageView> createState() => _ExperiencePageViewState();
}

class _ExperiencePageViewState extends State<ExperiencePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How many years of experience do you have?',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            checkBox('Less than one year'),
            checkBox('One to three years'),
            checkBox('Three to five years'),
            checkBox('Over five years'),
          ],
        ),
      ),
    );
  }

  clearCheckBoxes() {
    setState(() {});
  }

  CheckboxListTile checkBox(String text) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(text),
      value: true,
      onChanged: (bool? newValue) {},
    );
  }
}
