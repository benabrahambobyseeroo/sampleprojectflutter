// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data_layer/data_source/remote/api_service.dart' as _i284;
import '../../data_layer/repository/auth_repository_impl.dart' as _i480;
import '../../domain_layer/repository/user_repository.dart' as _i261;
import '../../domain_layer/usecases/get_users.dart' as _i38;
import '../../presentation_layer/bloc/api_bloc/login_bloc.dart' as _i166;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiService = _$ApiService();
    gh.singleton<_i361.Dio>(() => apiService.dio);
    gh.factory<_i261.AuthRepository>(
        () => _i480.AuthRepositoryImpl(gh<_i361.Dio>()));
    gh.factory<_i38.SignInUseCase>(
        () => _i38.SignInUseCase(gh<_i261.AuthRepository>()));
    gh.factory<_i166.LoginBloc>(
        () => _i166.LoginBloc(gh<_i38.SignInUseCase>()));
    return this;
  }
}

class _$ApiService extends _i284.ApiService {}
