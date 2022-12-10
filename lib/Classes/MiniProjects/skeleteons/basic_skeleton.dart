import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/skeleteons/helper/network/api_manager.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/skeleteons/models/dummy_json.dart';

class BasicSkeleton extends StatefulWidget {
  const BasicSkeleton({Key? key}) : super(key: key);

  @override
  State<BasicSkeleton> createState() => _BasicSkeletonState();
}

class _BasicSkeletonState extends State<BasicSkeleton> {
  late final ApiManager _apiManager;
  late List<DummyJson> _dummyJson;

  @override
  void initState() {
    _setApiSettings();
    super.initState();
  }

  void _setApiSettings() async {
    _apiManager = ApiManager();
    _dummyJson = await _apiManager.fetchData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: _dummyJson.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(_dummyJson[index].title)),
            );
          }),
    );
  }
}
