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

import '../../DataLayer/Datasource/remote/api_service.dart' as _i73;
import '../../DataLayer/repository/auth_repository_impl.dart' as _i566;
import '../../DomainLayer/repository/user_repository.dart' as _i1004;
import '../../DomainLayer/usecases/get_users.dart' as _i823;
import '../../Presentation%20layer/Bloc/login_bloc.dart' as _i945;

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
    gh.factory<_i1004.AuthRepository>(
        () => _i566.AuthRepositoryImpl(gh<_i361.Dio>()));
    gh.factory<_i823.SignInUseCase>(
        () => _i823.SignInUseCase(gh<_i1004.AuthRepository>()));
    gh.factory<_i945.LoginBloc>(
        () => _i945.LoginBloc(gh<_i823.SignInUseCase>()));
    return this;
  }
}

class _$ApiService extends _i73.ApiService {}
