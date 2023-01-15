import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class LoginCubit extends Cubit<LoginState> {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  bool _isLoginFail = false;

  LoginCubit(
    this.formKey,
    this.emailController,
    this.passwordController,
  ) : super(LoginInitial());

  void postUserModel() {
    if (formKey.currentState?.validate() ?? false) {
      // TODO -> SERVICE
    } else {
      _isLoginFail = true;
      LoginValidateState(_isLoginFail);
    }
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
