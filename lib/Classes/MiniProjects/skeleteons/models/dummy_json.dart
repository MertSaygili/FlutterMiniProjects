import 'dart:ffi';

class DummyJson {
  final int id;
  final String title;
  final String description;
  final int price;
  final double discountPercentage;
  final dynamic rating;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List<dynamic> images;

  DummyJson({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  factory DummyJson.fromJson(var data) {
    return DummyJson(
      id: data['id'],
      title: data['title'],
      description: data['description'],
      price: data['price'],
      discountPercentage: data['discountPercentage'],
      rating: data['rating'],
      stock: data['stock'],
      brand: data['brand'],
      category: data['category'],
      thumbnail: data['thumbnail'],
      images: data['images'],
    );
  }

  static List<DummyJson> dummyJsonSnapshot(List snapshot) {
    return snapshot.map((data) {
      return DummyJson.fromJson(data);
    }).toList();
  }
}
