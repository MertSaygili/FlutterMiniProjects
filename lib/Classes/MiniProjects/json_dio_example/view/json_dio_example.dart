import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project1_change_appbar_color/Classes/MiniProjects/json_dio_example/service/post_model.dart';

// trying something
class JsonDioExample extends StatefulWidget {
  const JsonDioExample({Key? key}) : super(key: key);

  @override
  State<JsonDioExample> createState() => _JsonDioExampleState();
}

class _JsonDioExampleState extends State<JsonDioExample> {
  final String _path = 'https://jsonplaceholder.typicode.com/posts';
  late final List<PostModel>? _data;
  late final Dio _network;

  @override
  void initState() {
    super.initState();
    _network = Dio(BaseOptions(baseUrl: _path));

    fetchItems();
  }

  Future<void> fetchItems() async {
    final response = await Dio().get(_path);

    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        _data = data.map((e) => PostModel.fromJson(e)).toList();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: _data?.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                  '${_data?[index].id.toString() ?? ''}.  ${_data?[index].title.toString() ?? ''} '),
              subtitle: Text(_data?[index].body.toString() ?? ''),
            );
          }),
    );
  }
}
