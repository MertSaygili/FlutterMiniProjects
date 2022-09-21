class UserModel {
  int? id;
  String? userName;
  int? age;
  bool? isMaries;

  UserModel({this.id, this.userName, this.age, this.isMaries});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    age = json['age'];
    isMaries = json['isMaries'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userName'] = userName;
    data['age'] = age;
    data['isMaries'] = isMaries;
    return data;
  }
}
