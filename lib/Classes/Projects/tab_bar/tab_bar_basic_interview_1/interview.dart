import 'package:flutter/material.dart';

class InterviewPage extends StatefulWidget {
  const InterviewPage({Key? key}) : super(key: key);

  @override
  State<InterviewPage> createState() => _InterviewPageState();
}

class _InterviewPageState extends State<InterviewPage>
    with TickerProviderStateMixin {
  final String _titleAppBar = 'Flutter Application';
  late final TabController _tabController;
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
          centerTitle: true,
          title: Text(_titleAppBar),
          bottom: TabBar(
            controller: _tabController,
            tabs:
                _TabBarSelections.values.map((e) => Tab(text: e.name)).toList(),
          ),
        ),
      ),
    );
  }
}

enum _TabBarSelections { Experince, Skills, Submit }

extension _MyTabBarSelectionExtensions on _TabBarSelections {}
