import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleproject/Config/routes/router.gr.dart';
import 'package:sampleproject/Presentation%20layer/Bloc/login_bloc.dart';
import 'package:sampleproject/l10n/lang_extensions.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () {
            context.router.push( TryRoute());
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        backgroundColor: ThemeData().primaryColor,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: _buildLogoSection(),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    _buildLoginHeader(),
                    const SizedBox(height: 25),
                    _buildTextField(
                      controller: usernameController,
                      label: context.loc.username,
                    ),
                    const SizedBox(height: 25),
                    _buildTextField(
                      controller: passwordController,
                      label: context.loc.password,
                      obscureText: true,
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(context.loc.forgot_password, textAlign: TextAlign.end),
                    ),
                    const SizedBox(height: 25),
                    _buildLoginButton(
                      context: context,
                      usernameController: usernameController,
                      passwordController: passwordController,
                    ),
                    const SizedBox(height: 15),
                    Text(context.loc.or_login_with),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildSocialButtons(),
            const SizedBox(height: 20),
            _buildSignupOption(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoSection() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 50,
          ),
          const SizedBox(height: 10),
          InkWell(
            onDoubleTap:(){


            },
             child: Text(
              "MAKANEK",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                       ),
           ),
        ],
      ),
    );
  }

  Widget _buildLoginHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Login",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Image.asset(
          "assets/images/bar.png",
          width: 50,
          height: 10,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      obscureText: obscureText,
    );
  }

  Widget _buildLoginButton({
    required BuildContext context,
    required TextEditingController usernameController,
    required TextEditingController passwordController,
  }) {
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
          backgroundColor: ThemeData().hintColor,
          foregroundColor: Colors.black,
        ),
        child: const Text('Login'),
      ),
    );
  }

  Widget _buildSocialButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialButton("assets/images/facebook.png", onPressed: () {
          // Handle Facebook login action
        }),
        const SizedBox(width: 10),
        _buildSocialButton("assets/images/google.png", onPressed: () {
          // Handle Google login action
        }),
      ],
    );
  }

  Widget _buildSocialButton(String assetPath, {required VoidCallback onPressed}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(8),
      ),
      onPressed: onPressed,
      child: Image.asset(
        assetPath,
        width: 30,
        height: 30,
      ),
    );
  }

  Widget _buildSignupOption(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(const HomeRoute());
      },
      borderRadius: BorderRadius.circular(30),
      child: Text(context.loc.signup),
    );
  }
}
