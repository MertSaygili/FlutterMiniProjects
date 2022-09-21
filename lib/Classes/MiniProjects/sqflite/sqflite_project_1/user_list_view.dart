import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/sqflite/sqflite_project_1/user_list_view_model.dart';

class UserListView extends UserListViewModel {
  final double _elevation = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        saveModel();
      }),
      body: Card(
        elevation: _elevation,
        child: Center(
          child: _buildWrap(),
        ),
      ),
    );
  }

  Wrap _buildWrap() {
    double runSpacing = 20;
    return Wrap(
      runSpacing: runSpacing,
      children: [
        TextField(
          onChanged: (name) => userModel.userName = name,
          decoration: _inputDecoration('userName'),
        ),
        TextField(
          onChanged: (age) => userModel.age = int.tryParse(age),
          decoration: _inputDecoration('age'),
        ),
        TextField(
          onChanged: (val) => userModel.isMaried = val.isNotEmpty,
          decoration: _inputDecoration('isMarried'),
        ),
      ],
    );
  }

  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      border: const OutlineInputBorder(),
    );
  }
}
