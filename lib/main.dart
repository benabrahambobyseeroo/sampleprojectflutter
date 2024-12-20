import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleproject/Config/routes/router.dart';
import 'package:sampleproject/Presentation%20layer/Bloc/login_bloc.dart';
import 'package:sampleproject/config/di/injectable.dart';
import 'package:sampleproject/l10n/Language.dart';
import 'package:sampleproject/l10n/app_localizations.dart';


void main() {
  configureDependencies();
  runApp(
    BlocProvider(
      create: (context) => getIt.get<LoginBloc>(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    // Default language is English
    return MaterialApp.router(
      title: 'Flutter Sample UI',
      locale: _locale
      ,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        primaryColor: Colors.yellow,
        hintColor: Colors.white,
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),

    );
  }

}
Locale _locale = const Locale('en');



