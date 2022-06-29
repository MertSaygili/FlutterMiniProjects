import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview/row_model.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview/text.dart';

class ExperienceView extends StatefulWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  State<ExperienceView> createState() => _ExperienceViewState();
}

class _ExperienceViewState extends State<ExperienceView> {
  final String _bodyTitle = "How many years of experience you have?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            Text(TextContent().titleExperience,
                style: const TextStyle(fontSize: 16)), // title
            RowModel(text: TextContent().textExperience1), // first row
            RowModel(text: TextContent().textExperience2),
            RowModel(text: TextContent().textExperience3), // first row
            RowModel(text: TextContent().textExperience4), // first row
          ],
        ),
      ),
    );
  }
}
