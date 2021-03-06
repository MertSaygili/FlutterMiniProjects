import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview_0/row_model.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview_0/text.dart';

class ExperienceView extends StatefulWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  State<ExperienceView> createState() => _ExperienceViewState();
}

class _ExperienceViewState extends State<ExperienceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(title: Text(TextContent().titleExperience)),
          RowModel(text: TextContent().textExperience1), // first row
          RowModel(text: TextContent().textExperience2),
          RowModel(text: TextContent().textExperience3), // first row
          RowModel(text: TextContent().textExperience4), // first row
          nextButton(),
        ],
      ),
    );
  }

  ElevatedButton nextButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 100),
        child: Text(
          TextContent().next,
          style: const TextStyle(fontSize: 19),
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
      ),
    );
  }
}
