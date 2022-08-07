import 'package:flutter/material.dart';

import 'data/strings.dart';
import 'experience_page.dart';

class SkillsPageView extends StatefulWidget {
  const SkillsPageView({Key? key, required this.controller}) : super(key: key);
  final TabController controller;

  @override
  State<SkillsPageView> createState() => _SkillsPageViewState();
}

class _SkillsPageViewState extends State<SkillsPageView> {
  final String _title = 'Which of skills do you have?';
  final String _subTitle = 'Select all that apply';
  final String _chooseFlutter = 'Flutter';
  final String _chooseDart = 'Dart';
  final String _chooseFirebase = 'Firebase';
  final String _chooseCloudFunction = 'Cloud functions';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PaddingItems().paddingPage,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_title, style: Theme.of(context).textTheme.subtitle1),
            Text(
              _subTitle,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 135, 124, 124),
              ),
            ),
            CheckboxListTile(
              title: Text(
                _chooseFlutter,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              value: false,
              onChanged: (bool? newValue) {},
            ),
            CheckboxListTile(
              title: Text(
                _chooseDart,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              value: false,
              onChanged: (bool? newValue) {},
            ),
            CheckboxListTile(
              title: Text(
                _chooseFirebase,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              value: false,
              onChanged: (bool? newValue) {},
            ),
            CheckboxListTile(
              title: Text(
                _chooseCloudFunction,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              value: false,
              onChanged: (bool? newValue) {},
            ),
            const Spacer(),
            CenteredElevatedButton(
              indexNumber: 2,
              controller: widget.controller,
              text: Strings().next,
            )
          ],
        ),
      ),
    );
  }
}
