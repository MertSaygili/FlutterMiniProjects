import 'package:dio/dio.dart';

import '../service/post_model.dart';

class DioModel {
  late List<PostModel>? _items;
  late Dio dio;

  DioModel() {}

  Future<void> fetchPostItems() async {
    dio =
        (await Dio().get('https://jsonplaceholder.typicode.com/posts')) as Dio;
  }
}
