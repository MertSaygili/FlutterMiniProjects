// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:dio/dio.dart';
import 'package:project1_change_appbar_color/bloc/login_app/model/login_request_model.dart';
import 'package:project1_change_appbar_color/bloc/login_app/model/login_response_model.dart';
import 'package:project1_change_appbar_color/bloc/login_app/service/ILoginService.dart';

class LoginService extends ILoginService {
  LoginService(Dio dio) : super(dio);

  @override
  Future<LoginResponseModel?> postUserLogin(LoginRequestModel model) async {
    print(loginPath);

    final response = await dio.post(
      loginPath,
      data: model,
      options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          }),
    );

    print(response);

    if (response.statusCode == 200) {
      return LoginResponseModel.fromJson(response.data);
    } else {
      return null;
    }
  }
}
