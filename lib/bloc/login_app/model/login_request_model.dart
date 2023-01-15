// ignore_for_file: unused_local_variable

class LoginRequestModel {
  String? email;
  String? password;

  LoginRequestModel({this.email, this.password});

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
