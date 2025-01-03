// import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleproject/config/routes/router.gr.dart';
import 'package:sampleproject/l10n/lang_extensions.dart';
import 'package:sampleproject/presentation_layer/bloc/locale_bloc/locale_bloc.dart';
import 'package:sampleproject/presentation_layer/bloc/login_bloc/login_bloc.dart';
import 'package:sampleproject/presentation_layer/widgets/build_textfield.dart';
import 'package:sampleproject/presentation_layer/widgets/login_button.dart';
import 'package:sampleproject/presentation_layer/widgets/login_header.dart';
import 'package:sampleproject/presentation_layer/widgets/makanek_logo.dart';
import 'package:sampleproject/presentation_layer/widgets/social_buttons.dart';


@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> { final TextEditingController usernameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {


    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          loading: (response) {
            // log("response"+response);
            // Future.delayed(const Duration(seconds: 2),(){
              context.router.push(TryRoute(response: response,));
            // });

          },

          orElse: () {},
        );
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Column(
          children: [
            const Expanded(
              flex: 1,
              child: CurvedColumn(),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: SingleChildScrollView(
                  child: Column(

                    children: [


                      const SizedBox(height: 50),
                      const Align(alignment: Alignment.centerLeft,
                          child: LoginHeader()),
                      const SizedBox(height: 25),
                      BuildTextField(
                        controller: usernameController,
                        label: context.loc.username,
                      ),
                      const SizedBox(height: 25),
                      BuildTextField(
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
                      LoginButton(
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
            ),
            const SizedBox(height: 20),
            const SocialButtons(),
            const SizedBox(height: 20),
        InkWell(
          onTap: () {
            context.router.push(const HomeRoute());
          },
          borderRadius: BorderRadius.circular(30),
          child: Text(context.loc.signup),
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                    style: FilledButton.styleFrom(
                      fixedSize: const Size(200, 50),
                      backgroundColor: Theme.of(context).hintColor,
                      foregroundColor: Colors.black,
                    ),
                    onPressed: (){
                      // Handle Google login action
                      context.read<LocaleBloc>().add(
                        const LocaleEvent.changeLocale(Locale('es')),  // Change to French
                      );
                      // context.read<LocaleProvider>().changeLocale(const Locale("en"));
                    }, child: const Text("Es")),
                FilledButton(style: FilledButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  backgroundColor: Theme.of(context).hintColor,
                  foregroundColor: Colors.black,
                ),onPressed: (){
                  // Handle Google login action
                  context.read<LocaleBloc>().add(
                    const LocaleEvent.changeLocale(Locale('en')),  // Change to French
                  );
                  // context.read<LocaleProvider>().changeLocale(const Locale("en"));
                }, child: const Text("En"))

              ],
            ),
          ],
        ),
      ),
    );
  }





  // Widget _buildTextField({
  //   required TextEditingController controller,
  //   required String label,
  //   bool obscureText = false,
  // }) {
  //   return BuildTextField();
  // }









  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}










