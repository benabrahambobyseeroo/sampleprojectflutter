import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sampleproject/Config/routes/router.dart';
import 'package:sampleproject/presentation_layer/Bloc/login_bloc.dart';
import 'package:sampleproject/presentation_layer/provider/LocaleProvider.dart';
// import 'package:sampleproject/Presentation%20layer/Bloc/login_bloc.dart';
// import 'package:sampleproject/Presentation%20layer/provider/LocaleProvider.dart';

import 'package:sampleproject/config/di/injectable.dart';
import 'package:sampleproject/l10n/Language.dart';
import 'package:sampleproject/l10n/app_localizations.dart';
// import 'package:sampleproject/presentation_layer/Bloc/login_bloc.dart';
// import 'package:sampleproject/presentation_layer/provider/LocaleProvider.dart';




void main() {
  configureDependencies();
  runApp(
      MultiProvider(providers: [ChangeNotifierProvider(create: (_) => LocaleProvider())],child:
      BlocProvider(
        create: (context) => getIt.get<LoginBloc>(),
        child: const MyApp(),
      ),
      ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    // Default language is English
    return Consumer<LocaleProvider>(
        builder: (context,locale,child){return
          MaterialApp.router(
            title: 'Flutter Sample UI',
            locale: locale.locale
            ,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            theme: ThemeData(
              primaryColor: Colors.yellow,
              hintColor: Colors.white,
            ),
            routerDelegate: appRouter.delegate(),
            routeInformationParser: appRouter.defaultRouteParser(),

          );}
    );
  }
}
// Locale _locale = const Locale('en');



