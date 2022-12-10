import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project1_change_appbar_color/Classes/MiniProjects/skeleteons/models/dummy_json.dart';

class ApiManager {
  Future<List<DummyJson>> fetchData() async {
    Uri url = Uri.parse('https://dummyjson.com/products');

    final response = await http.get(url);
    var body = jsonDecode(response.body);
    return DummyJson.dummyJsonSnapshot(body['products']);
  }
}
