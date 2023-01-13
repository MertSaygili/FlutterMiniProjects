import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/route/app_1.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/route/app_2.dart';

class RouterManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const RouteApp());
      case '/second':
        var data = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => RouteApp2(title: data));
      default:
        return MaterialPageRoute(builder: (_) => const RouteApp());
    }
  }
}
