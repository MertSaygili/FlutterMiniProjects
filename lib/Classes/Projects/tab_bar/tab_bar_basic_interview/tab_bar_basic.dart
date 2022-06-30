// ignore_for_file: constant_identifier_names
// TAB BAR BASIC PROJESININ MIMARISINI TAM OTURTAMADIM FARKLI BIR DOSYA ICINDE YAPACAGIM

import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview/exprience.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview/skills.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview/submit.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview/text.dart';

class TabBarBasic extends StatefulWidget {
  const TabBarBasic({Key? key}) : super(key: key);

  @override
  State<TabBarBasic> createState() => _TabBarBasicState();
}

class _TabBarBasicState extends State<TabBarBasic>
    with TickerProviderStateMixin {
  late final _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _TabBarSelections.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _TabBarSelections.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(TextContent().titleAppBar),
          ),
          bottom: TabBar(
            tabs:
                _TabBarSelections.values.map((e) => Tab(text: e.name)).toList(),
          ),
        ),
        body: const TabBarView(children: [
          ExperienceView(),
          Skills(),
          Submit(),
        ]),
      ),
    );
  }
}

enum _TabBarSelections { Experince, Skills, Submit }

extension _MyTabBarSelectionExtensions on _TabBarSelections {}
