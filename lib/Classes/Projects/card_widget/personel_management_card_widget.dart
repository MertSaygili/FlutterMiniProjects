import 'package:flutter/material.dart';

class PersonelManagementCardWidget extends StatelessWidget {
  const PersonelManagementCardWidget({Key? key}) : super(key: key);
  final appBarTitle = "Design of Personel Card Widget";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(appBarTitle)),
      ),
    );
  }
}
