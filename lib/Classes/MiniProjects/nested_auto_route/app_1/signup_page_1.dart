import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/nested_auto_route/app_1/routes/router.gr.dart';

class SignupPage1 extends StatelessWidget {
  const SignupPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: () => context.router.push(const SignupRouterTwo()), child: const Text('Signup 2'))),
    );
  }
}
