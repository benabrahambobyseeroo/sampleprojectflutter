part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started(
      {required String number, required String pass,required BuildContext context}) = _Started;
}