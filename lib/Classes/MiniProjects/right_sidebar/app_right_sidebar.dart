import 'package:flutter/material.dart';

class AppRightSidebar extends StatefulWidget {
  const AppRightSidebar({Key? key}) : super(key: key);

  @override
  State<AppRightSidebar> createState() => _AppRightSidebarState();
}

class _AppRightSidebarState extends State<AppRightSidebar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 64.0),
          child: Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 100,
              width: 200,
              child: Drawer(
                child: Column(
                  children: <Widget>[const Text('This is the Drawer'), ElevatedButton(onPressed: _closeEndDrawer, child: const Text('Close Drawer'))],
                ),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(actions: [IconButton(onPressed: () => _openEndDrawer(), icon: const Icon(Icons.more_vert))]),
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
