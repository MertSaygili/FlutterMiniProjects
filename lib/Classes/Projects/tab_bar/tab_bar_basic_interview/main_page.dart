import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview/experience_page.dart';
import 'package:project1_change_appbar_color/Classes/Projects/tab_bar/tab_bar_basic_interview/skills_page.dart';

import 'data/strings.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView>
    with TickerProviderStateMixin {
  final List<CustomTab> _myTabs = <CustomTab>[
    CustomTab(icon: IconItems().radioButtonOn, text: Strings().experience),
    CustomTab(icon: IconItems().checkBox, text: Strings().skills),
    CustomTab(icon: IconItems().send, text: Strings().submit),
  ];

  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: _myTabs.length,
      vsync: this,
      animationDuration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: Text(Strings().appBarTitle),
        centerTitle: true,
        titleSpacing: 30,
        bottom: TabBar(
          controller: _controller,
          tabs: _myTabs,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          ExperiencePageView(controller: _controller),
          SkillsPageView(controller: _controller),
          Center(
            child: ElevatedButton(
              onPressed: () {
                _controller.animateTo(0);
              },
              child: const Text('GO TO DATA PAGE'),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  const CustomTab({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Tab(icon: icon, text: text);
  }
}

class IconItems {
  Icon radioButtonOn =
      Icon(Icons.radio_button_on, color: ColorItems().whiteColor);
  Icon checkBox = Icon(Icons.check_box, color: ColorItems().whiteColor);
  Icon send = Icon(Icons.send, color: ColorItems().whiteColor);
}

class ColorItems {
  Color whiteColor = Colors.white;
}
