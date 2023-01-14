import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class StudentRepository {
  Future<void> getStudents();
}

class StudentRepositoryImpl implements StudentRepository {
  final String _mainUrl = 'localhost:8040/';

  @override
  Future<void> getStudents() async {
    final response = await http.get(Uri.parse('${_mainUrl}students'));

    if (response.statusCode == 200) {
      Map jsonBody = jsonDecode(response.body);
      print(jsonBody);
    } else {
      throw NetworkError(response.statusCode.toString(), response.body);
    }
  }
}

class NetworkError implements Exception {
  final String statusCode;
  final String message;

  NetworkError(this.statusCode, this.message);
}
