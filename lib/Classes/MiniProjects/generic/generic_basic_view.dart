// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class GenericBasicView extends StatefulWidget {
  const GenericBasicView({Key? key}) : super(key: key);

  @override
  State<GenericBasicView> createState() => _GenericBasicViewState();
}

class _GenericBasicViewState extends State<GenericBasicView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

class User {
  final String name;
  final String id;
  final int money;

  User(this.name, this.id, this.money);
}

class UserManagement {
  void sayName(User user) {
    print(user.name);
  }

  void calculateMoney(List<User> users) {
    int sum = 0;
    for (var item in users) {
      sum += item.money;
    }

    int sumMoney = users
        .map((e) => e.money)
        .fold<int>(0, (previousValue, element) => previousValue + element);
  }
}
