import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1_change_appbar_color/bloc/employee_app/cubit/cubit.dart';
import 'package:project1_change_appbar_color/bloc/employee_app/states/employee_states.dart';

class EmployeeApp extends StatefulWidget {
  const EmployeeApp({Key? key}) : super(key: key);

  @override
  State<EmployeeApp> createState() => _EmployeeAppState();
}

class _EmployeeAppState extends State<EmployeeApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmployeeCubit(),
      child: _buildScaffold(),
    );
  }

  Scaffold _buildScaffold() => Scaffold(
        appBar: AppBar(title: Text(_Strings().title), centerTitle: true),
        body: BlocConsumer(
          builder: (context, state) {
            return Scaffold();
            // if (state is EmployeeInitialState) {

            //   return _productInitial(context);
            // } else if (state is EmployeeLoadingState) {
            //   return _productLoading();
            // } else if (state is EmployeeLoadedState) {
            //   return _productLoaded(state);
            // } else {
            //   return const Center(child: Text('Something went wrong'));
            // }
          },
          listener: (context, state) {},
        ),
      );
}

class _Strings {
  final String title = 'Employees';
}
