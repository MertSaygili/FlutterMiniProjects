import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1_change_appbar_color/bloc/login_app/viewmodel/login_cubit.dart';

class LoginAppView extends StatelessWidget {
  LoginAppView({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        _formKey,
        _emailController,
        _passwordController,
      ),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return _buildScaffold(context, state);
        },
      ),
    );
  }

  Scaffold _buildScaffold(BuildContext context, LoginState state) {
    return Scaffold(
      appBar: AppBar(title: Text(_Strings()._title), centerTitle: true),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          children: [
            _email(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            _password(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            ElevatedButton(onPressed: () {}, child: Text(_Strings()._save))
          ],
        ),
      ),
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
