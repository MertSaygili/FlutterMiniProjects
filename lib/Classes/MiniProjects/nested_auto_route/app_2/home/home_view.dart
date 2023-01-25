import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.gr.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  final String _url = 'https://picsum.photos/250';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            IconButton(onPressed: () => context.router.push(HomeDetailView(url: _url)), icon: Image.network(_url)),
            ElevatedButton(
              onPressed: () => context.router.push(const DashboardRoute()),
              child: const Text('TO DASHBOARD'),
            )
          ],
        ),
      ),
    );
  }
}
