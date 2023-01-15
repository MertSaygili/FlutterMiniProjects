import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1_change_appbar_color/bloc/login_app/service/login_service.dart';
import 'package:project1_change_appbar_color/bloc/login_app/view/login_done_view.dart';
import 'package:project1_change_appbar_color/bloc/login_app/viewmodel/login_cubit.dart';

class LoginAppView extends StatelessWidget {
  LoginAppView({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final String baseUrl = 'https://regres.in/api';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        _formKey,
        _emailController,
        _passwordController,
        service: LoginService(Dio(BaseOptions(baseUrl: baseUrl))),
      ),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginComplete) {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return LoginData(model: state.model);
            }));
          }
        },
        builder: (context, state) {
          return _buildScaffold(context, state);
        },
      ),
    );
  }

  Scaffold _buildScaffold(BuildContext context, LoginState state) {
    return Scaffold(
      appBar: AppBar(
          title: Text(_Strings()._title),
          leading: Visibility(
            visible: context.watch<LoginCubit>().isLoading,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(color: Colors.white),
            ),
          )),
      body: Form(
        key: _formKey,
        autovalidateMode: state is LoginValidateState
            ? (state.isValidate
                ? AutovalidateMode.always
                : AutovalidateMode.disabled)
            : AutovalidateMode.disabled,
        child: Column(
          children: [
            _email(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            _password(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            _button(context)
          ],
        ),
      ),
    );
  }

  Widget _button(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is LoginComplete) {
          return const Card(child: Icon(Icons.check));
        }
        return ElevatedButton(
          onPressed: context.watch<LoginCubit>().isLoading
              ? null
              : () => context.read<LoginCubit>().postUserModel(),
          child: Text(_Strings()._save),
        );
      },
    );
  }

  TextFormField _password() {
    return TextFormField(
      controller: _passwordController,
      validator: (value) => (value ?? '').length > 5 ? null : '5 ten kucuk',
      decoration: InputDecoration(labelText: _Strings()._passwordHint),
    );
  }

  TextFormField _email() {
    return TextFormField(
      controller: _emailController,
      validator: (value) => (value ?? '').length > 6 ? null : '6 dan kucuk',
      decoration: InputDecoration(labelText: _Strings()._emailHint),
    );
  }
}

class _Strings {
  final String _title = 'Cubit Login';
  final String _save = 'Save';
  final String _passwordHint = 'Password';
  final String _emailHint = 'Email';
}
