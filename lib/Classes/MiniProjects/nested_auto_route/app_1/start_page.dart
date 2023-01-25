import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/nested_auto_route/app_1/routes/router.gr.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => context.router.push(const HomeRoute()), child: const Text('Start')),
            ElevatedButton(onPressed: () => context.router.push(const SignupRoute1()), child: const Text('Signup')),
          ],
        ),
      ),
    );
  }
}
