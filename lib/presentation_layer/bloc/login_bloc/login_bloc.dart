// import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
// import 'package:flutter/cupertino.dart';
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';
import 'package:sampleproject/domain_layer/usecases/get_users.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@Injectable()
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final SignInUseCase signInUseCase;
  LoginBloc(this.signInUseCase) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(started: (number,pass) async {
        // emit(const LoginState.success());
        try {
          final response = await signInUseCase.call(phoneNumber: number,password: pass);

          emit( LoginState.loading(response));

        } catch (e) {
          emit( const LoginState.loading(""));
        }
      });
    });
  }
}
