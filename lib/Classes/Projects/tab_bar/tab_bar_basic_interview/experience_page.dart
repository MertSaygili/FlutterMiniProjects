import 'package:flutter/material.dart';

class ExperiencePageView extends StatefulWidget {
  const ExperiencePageView({Key? key, required this.controller})
      : super(key: key);
  final TabController controller;

  @override
  State<ExperiencePageView> createState() => _ExperiencePageViewState();
}

class _ExperiencePageViewState extends State<ExperiencePageView> {
  bool _throwShotAway = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text('merhaba cnaim'),
            value: _throwShotAway,
            onChanged: (bool? newValue) {
              setState(() {
                _throwShotAway = !_throwShotAway;
              });
            },
          )
        ],
      ),
    );
  }
}
