import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/state_management/bloc/block_counter_app/counter_cupit.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/state_management/bloc/block_counter_app/counter_page.dart';

void main() => runApp(const CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterCubit(),
        child: const CounterPage(),
      ),
    );
  }
}
