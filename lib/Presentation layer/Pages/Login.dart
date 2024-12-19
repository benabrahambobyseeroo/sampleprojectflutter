import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sampleproject/DomainLayer/usecases/get_users.dart';
import 'package:sampleproject/Presentation%20layer/Bloc/login_bloc.dart';
import 'package:sampleproject/Presentation%20layer/Widgets/makanek%20logo.dart';

import '../../Config/routes/router.gr.dart';
// import '../Widgets/makanek_logo.dart';
import 'Dashboard.dart';
@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Future<void> _login(BuildContext context, String username, String password) async {
    final Dio dio = Dio();
    try {
      final response = await dio.post(
        'http://3.6.158.28/api/signin',
        data: {
          'mobile_number': username,
          'password': password,
          'login_type': '1',
          'device_id': 'cw9asgw5Tr2imrFEBokGN8:APA91bHA8ejgWhKTay3pZWwN3qLYikcLtCZ560QcyTG0jztafaI6Huc4gpEv5DTC_NBt0ZrutUgQfFo_HagKrC5tCZ_umPVjby08s2mnpcZadJ8mZazNqK8',
          'device_type': '1',
          'app_id': '2',
          'app_version': '1.0.45',
          'mobile_device_name': 'samsung SM-A156E OS_VERSION:14',
        },
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );

      if (response.statusCode == 200) {
        // Navigate to the dashboard on success
        context.router.push(Trypage());
      } else {
        // Show an error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login failed: ${response.data['message'] ?? 'Unknown error'}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login failed: ${e.toString()}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(child: curvedColumn(), flex: 1),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Row(
                      children: [Text("Login", style: TextStyle(fontSize: 25))],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/bar.png",
                          width: 50,
                          height: 10,
                          fit: BoxFit.fill,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 25),
                        TextField(
                          controller: usernameController,
                          decoration: InputDecoration(labelText: 'Username'),
                        ),
                        SizedBox(height: 25),
                        TextField(
                          controller: passwordController,
                          decoration: InputDecoration(labelText: 'Password'),
                          obscureText: true,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Forgot Password",
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, state) {
                          return ElevatedButton(
                            onPressed: () {
                              final username = usernameController.text.trim();
                              final password = passwordController.text.trim();

                              if (username.isNotEmpty && password.isNotEmpty) {
                                 context.read<LoginBloc>().add(LoginEvent.started(pass: password,number: username, context: context));
                                // _login(context, username, password);


                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Please enter username and password')),
                                );
                              }
                            },
                            child: Text('Login'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(200, 50),
                              backgroundColor: Colors.yellow,
                              foregroundColor: Colors.black,
                            ),
                          );
    },
    ),
                        ),
                        SizedBox(height: 15),
                        Text("or login with")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(8),
                  ),
                  onPressed: () {
                    // TODO: Handle Facebook login action
                  },
                  child: Image.asset(
                    'assets/images/facebook.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(8),
                  ),
                  onPressed: () {
                    // TODO: Handle Google login action
                  },
                  child: Image.asset(
                    'assets/images/google.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                context.router.push(HomeRoute());
              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                child: Text("Do not have an account SignUP"),
              ),
            ),
          ],
        ),
      );
  }
}
