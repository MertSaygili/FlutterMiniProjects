import 'dart:convert';

import '../model/product_model.dart';
import 'package:http/http.dart' as http;

abstract class ProductRepository {
  Future<List<Product>> getProducts();
}

class ProductRepositoryImpl implements ProductRepository {
  final baseUrl = 'https://dummyjson.com/products';

  @override
  Future<List<Product>> getProducts() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      Map responseBody = jsonDecode(response.body);
      List _temp = [];

      for (var i in responseBody['products']) {
        _temp.add(i);
      }
      return Product.fromJsonListSnapshot(_temp);
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
