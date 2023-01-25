import 'package:flutter/material.dart';

class HomeDetailView extends StatelessWidget {
  const HomeDetailView({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(url), centerTitle: true);
  }
}
