// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:sampleproject/Presentation%20layer/Pages/Dashboard.dart' as _i1;
import 'package:sampleproject/Presentation%20layer/Pages/Login.dart' as _i2;
import 'package:sampleproject/Presentation%20layer/Pages/mainpage.dart' as _i3;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i1.HomePage();
    },
  );
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginPage();
    },
  );
}

/// generated route for
/// [_i3.trypage]
class Trypage extends _i4.PageRouteInfo<void> {
  const Trypage({List<_i4.PageRouteInfo>? children})
      : super(
          Trypage.name,
          initialChildren: children,
        );

  static const String name = 'Trypage';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i3.trypage();
    },
  );
}
