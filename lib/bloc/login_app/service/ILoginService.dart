// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:project1_change_appbar_color/bloc/login_app/model/login_request_model.dart';

abstract class ILoginService {
  final Dio dio;

  ILoginService(this.dio);
  final String loginPath = IloginServicePath.LOGIN.rawValue;

  Future<LoginRequestModel?> postUserLogin(LoginRequestModel model);
}

// ignore: constant_identifier_names
enum IloginServicePath { LOGIN }

extension ILoginServicePathExtension on IloginServicePath {
  String get rawValue {
    switch (this) {
      case IloginServicePath.LOGIN:
        return '/login';
    }
  }
}
