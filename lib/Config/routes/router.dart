import 'package:auto_route/auto_route.dart';
import 'package:sampleproject/Config/routes/router.gr.dart';
import 'package:sampleproject/Presentation%20layer/Pages/dashboard_page.dart';
import 'package:sampleproject/Presentation%20layer/Pages/login_page.dart';
import 'package:sampleproject/Presentation%20layer/Pages/main_page.dart';


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


