import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersistenTabbar extends StatefulWidget {
  const PersistenTabbar({Key? key}) : super(key: key);

  @override
  State<PersistenTabbar> createState() => _PersistenTabbarState();
}

class _PersistenTabbarState extends State<PersistenTabbar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      tabBuilder: ((context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) => const HomePage(),
            );
          case 1:
            return CupertinoTabView(
              builder: (context) => const ChatPage(),
            );
          case 2:
            return CupertinoTabView(
              builder: (context) => const ProfilePage(),
            );
          default:
            return CupertinoTabView(
              builder: (context) => const HomePage(),
            );
        }
      }),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('I am on the home page')),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const NextPage();
                  })),
              child: const Text('Click me!'))),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('I am on the profile page')),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios), onPressed: () => Navigator.of(context).pop()),
      ),
      body: const Center(child: Text('I am on the next page')),
    );
  }
}
