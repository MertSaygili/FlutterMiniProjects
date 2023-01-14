import 'dart:convert';

import 'package:flutter/material.dart';
import '../network/student_repository.dart';

import 'package:http/http.dart' as http;

class ShowStudentPage extends StatefulWidget {
  const ShowStudentPage({Key? key}) : super(key: key);

  @override
  State<ShowStudentPage> createState() => _ShowStudentPageState();
}

class _ShowStudentPageState extends State<ShowStudentPage> {
  final String _mainUrl = 'http://127.0.0.1:8080/students';

  @override
  void initState() {
    super.initState();
    getStudents();
  }

  Future<void> getStudents() async {
    final response = await http.post(Uri.parse(_mainUrl));

    if (response.statusCode == 200) {
      Map jsonBody = jsonDecode(response.body);
      print(jsonBody);
    } else {
      throw NetworkError(response.statusCode.toString(), response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Show Student Page')),
    );
    // return BlocProvider(
    //   create: (context) => StudentCubit(StudentRepositoryImpl()),
    //   child: _buildScaffold(context),
    // );
  }

  // Scaffold _buildScaffold(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text(_Strings()._title), centerTitle: true),
  //     body: BlocConsumer<StudentCubit, StudentCubitStates>(
  //       builder: (context, state) {
  //         if (state is StudentCubitInitialState) {
  //           return _studentInitial(context);
  //         } else if (state is StudentCubitLoadingState) {
  //           return _studentLoading();
  //         } else if (state is StudentCubitLoadedState) {
  //           return _studentLoaded(state);
  //         } else {
  //           return const Center(child: Text('Something went wrong'));
  //         }
  //       },
  //       listener: (context, state) {
  //         _errorMessage(state, context);
  //       },
  //     ),
  //   );
  // }
}

class _Strings {
  final String _title = 'Show Student';
}
