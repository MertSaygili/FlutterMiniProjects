import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview/row_model.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview/text.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text(TextContent().titleSkills),
            subtitle: Text(TextContent().subtitleSkills),
          ),
          RowModel(text: TextContent().textFlutter),
          RowModel(text: TextContent().textDart),
          RowModel(text: TextContent().textFirebase),
          RowModel(text: TextContent().textCloudFunctions),
        ],
      ),
    );
  }
}
