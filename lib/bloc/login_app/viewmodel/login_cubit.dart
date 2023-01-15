import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1_change_appbar_color/bloc/login_app/service/ILoginService.dart';

class LoginCubit extends Cubit<LoginState> {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  final ILoginService service;

  bool isLoginFail = false;
  bool isLoading = false;

  LoginCubit(this.formKey, this.emailController, this.passwordController,
      {required this.service})
      : super(LoginInitial());

  void postUserModel() async {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      changeLoadingView(isLoading);
      await Future.delayed(const Duration(seconds: 2));
      changeLoadingView(isLoading);
    } else {
      isLoginFail = true;
      emit(LoginValidateState(isLoginFail));
    }
  }

  void changeLoadingView(bool state) {
    isLoading = !isLoading;
    emit(LoginLoadingState(isLoading));
  }
}

abstract class LoginState {
  const LoginState();
}

class LoginInitial extends LoginState {}

class LoginValidateState extends LoginState {
  final bool isValidate;

  LoginValidateState(this.isValidate);
}

class LoginLoadingState extends LoginState {
  final bool isLoading;

  LoginLoadingState(this.isLoading);
}
