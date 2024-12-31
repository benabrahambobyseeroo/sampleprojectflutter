// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:sampleproject/presentation_layer/pages/dashboard_page.dart'
    as _i1;
import 'package:sampleproject/presentation_layer/pages/login_page.dart' as _i2;
import 'package:sampleproject/presentation_layer/pages/main_page.dart' as _i3;

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
      return const _i1.HomePage();
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
/// [_i3.TryScreen]
class TryRoute extends _i4.PageRouteInfo<TryRouteArgs> {
  TryRoute({
    _i5.Key? key,
    required String response,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          TryRoute.name,
          args: TryRouteArgs(
            key: key,
            response: response,
          ),
          initialChildren: children,
        );

  static const String name = 'TryRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TryRouteArgs>();
      return _i3.TryScreen(
        key: args.key,
        response: args.response,
      );
    },
  );
}

class TryRouteArgs {
  const TryRouteArgs({
    this.key,
    required this.response,
  });

  final _i5.Key? key;

  final String response;

  @override
  String toString() {
    return 'TryRouteArgs{key: $key, response: $response}';
  }
}
