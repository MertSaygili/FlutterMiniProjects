import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview_1/skills.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview_1/submit.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview_1/experience.dart';

class InterviewPage extends StatefulWidget {
  const InterviewPage({Key? key}) : super(key: key);

  @override
  State<InterviewPage> createState() => _InterviewPageState();
}

class _InterviewPageState extends State<InterviewPage>
    with TickerProviderStateMixin {
  final String _titleAppBar = 'Flutter Application';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _TabBarSelections.values.length,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(_titleAppBar),
          bottom: TabBar(
            isScrollable: false,
            indicatorWeight: 3,
            tabs:
                _TabBarSelections.values.map((e) => Tab(text: e.name)).toList(),
          ),
        ),
        body: const TabBarView(
          children: [
            Experience(),
            Skills(),
            Submit(),
          ],
        ),
      ),
    );
  }
}

enum _TabBarSelections { Experince, Skills, Submit }

extension _MyTabBarSelectionExtensions on _TabBarSelections {}
