import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/sqflite/sqflite_project_1/model/user_database_provider.dart';

import 'model/user_model.dart';
import 'user_list.dart';

abstract class UserListViewModel extends State<UserList> {
  late final UserDatabaseProvider userDatabaseProvider;

  final UserModel userModel = UserModel();

  @override
  void initState() {
    super.initState();
    userDatabaseProvider = UserDatabaseProvider();
    userDatabaseProvider.open();
  }

  Future<void> saveModel() async {
    final result = await userDatabaseProvider.insert(userModel);
    print(result);
  }
}
