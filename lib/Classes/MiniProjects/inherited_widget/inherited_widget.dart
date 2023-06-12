import 'package:flutter/material.dart';

class StateInheritedWidget extends InheritedWidget {
  final int counter;

  const StateInheritedWidget({Key? key, required this.counter, required Widget child}) : super(key: key, child: child);

  static int of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<StateInheritedWidget>()!.counter;

  @override
  bool updateShouldNotify(covariant StateInheritedWidget oldWidget) {
    return oldWidget.counter != counter;
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final counter = StateInheritedWidget.of(context);
    return StateInheritedWidget(
      counter: 0,
      child: Scaffold(
        body: Text(counter.toString()),
      ),
    );
  }
}
