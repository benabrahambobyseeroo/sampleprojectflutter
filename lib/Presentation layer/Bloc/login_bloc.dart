import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sampleproject/Config/routes/router.gr.dart';
import 'package:sampleproject/DomainLayer/usecases/get_users.dart';
import 'package:sampleproject/Presentation%20layer/Pages/main_page.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@Injectable()
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final SignInUseCase signinusecase;
  LoginBloc(this.signinusecase) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(started: (number,pass) async {
        emit(const LoginState.success());
        try {
          final response = await signinusecase.call(phoneNumber: number,password: pass);
          log("response"+response);

        } catch (e, stack) {
        }
      });
    });
  }
}
