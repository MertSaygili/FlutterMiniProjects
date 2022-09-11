import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/shared_preferences/list_view/shared_manager.dart';

class PageView extends StatefulWidget {
  const PageView({Key? key}) : super(key: key);

  @override
  State<PageView> createState() => _PageViewState();
}

class _PageViewState extends State<PageView> {
  late final SharedManager _sharedManager;
  late List<String> _countries;
  late List<String> _times;

  @override
  void initState() {
    super.initState();
    _setSharedManager();
  }

  void _setSharedManager() {
    _sharedManager = SharedManager();
    _sharedManager.init();
    _countries = _sharedManager.getStringList(SharedKeys.cities);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: ListView.builder(
          itemCount: _countries.length,
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(
                title: Text(_countries[index]),
              ),
            );
          })),
    );
  }
}
