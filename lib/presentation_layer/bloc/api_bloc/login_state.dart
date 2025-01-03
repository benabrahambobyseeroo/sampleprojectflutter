part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading(String response) =_Loading;
  // const factory LoginState failed({required error, required String message}) {}

  const factory LoginState.success() =_Success;
}
