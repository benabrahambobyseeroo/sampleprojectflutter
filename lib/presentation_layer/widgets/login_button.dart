// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleproject/presentation_layer/bloc/login_bloc/login_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.context,
    required this. usernameController,
    required this. passwordController
  });
  final BuildContext context ;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          final username = usernameController.text.trim();
          final password = passwordController.text.trim();

          if (username.isNotEmpty && password.isNotEmpty) {
            context.read<LoginBloc>().add(
              LoginEvent.started(
                number: username,
                pass: password,
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please enter username and password')),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(200, 50),
          backgroundColor: Theme.of(context).hintColor,
          foregroundColor: Colors.black,
        ),
        child: const Text('Login'),
      ),
    );
  }
}