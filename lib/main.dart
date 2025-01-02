import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleproject/config/routes/router.dart';
import 'package:sampleproject/presentation_layer/bloc/login_bloc.dart';
import 'package:sampleproject/config/di/injectable.dart';
import 'package:sampleproject/l10n/app_localizations.dart';
import 'package:sampleproject/presentation_layer/provider/locale_bloc.dart';


void main() {
  configureDependencies();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<LoginBloc>(),  // Inject LoginBloc
        ),
        BlocProvider(
          create: (_) => LocaleBloc()..add(const LocaleEvent.started()),  // Inject LocaleBloc and trigger initial state
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return BlocBuilder<LocaleBloc, LocaleState>(
      builder: (context, state) {
        return MaterialApp.router(
          title: 'Flutter Sample UI',
          locale: state?.when(
            initial: () => const Locale('en'),  // Default to English if initial
            loaded: (locale) => locale,         // Use loaded locale
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: ThemeData(
            primaryColor: Colors.white,
            hintColor: Colors.yellow,
          ),
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
