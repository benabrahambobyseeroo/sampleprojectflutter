import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:sampleproject/Config/di/injectable.dart';
import 'package:sampleproject/Config/routes/router.dart';
import 'package:sampleproject/DomainLayer/usecases/get_users.dart';
import 'package:sampleproject/Presentation%20layer/Bloc/login_bloc.dart';
import 'Config/routes/router.gr.dart';


void main() {
  // Register the app router with GetIt (Dependency Injection container)
  // final appRouter = AppRouter();
  // GetIt.I.registerSingleton<AppRouter>(appRouter);
  // GetIt.I.registerFactory<LoginBloc>(() => LoginBloc(GetIt.I<SignInUseCase>()));
  configureDependencies();
  runApp(BlocProvider(
    create: (context) => getIt.get<LoginBloc>(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // final AppRouter appRouter;


  MyApp(// {

      // required this.appRouter

      // }
      );

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      title: 'Flutter Sample UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}


