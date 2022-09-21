class UserModel {
  int? id;
  String? userName;
  int? age;
  bool? isMaried;

  UserModel({this.id, this.userName, this.age, this.isMaried});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    age = json['age'];
    isMaried = json['isMaried'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userName'] = userName;
    data['age'] = age;
    data['isMaried'] = isMaried;
    return data;
  }
}
