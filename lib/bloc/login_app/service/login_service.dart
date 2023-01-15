// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:dio/dio.dart';
import 'package:project1_change_appbar_color/bloc/login_app/model/login_request_model.dart';
import 'package:project1_change_appbar_color/bloc/login_app/service/ILoginService.dart';

class LoginService extends ILoginService {
  LoginService(Dio dio) : super(dio);

  @override
  Future<LoginRequestModel?> postUserLogin(LoginRequestModel model) async {
    final response = await dio.post(loginPath, data: model);

    if (response.statusCode == 200) {
      return LoginRequestModel.fromJson(response.data);
    } else {
      return null;
    }
  }
}
