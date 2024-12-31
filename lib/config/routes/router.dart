import 'package:auto_route/auto_route.dart';
import 'package:sampleproject/config/routes/router.gr.dart';



// Define your routes using the new AutoRouter syntax
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: TryRoute.page),
  ];
}


