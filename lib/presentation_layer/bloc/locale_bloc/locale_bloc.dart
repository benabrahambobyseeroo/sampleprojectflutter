// import 'package:bloc/bloc.dart';
// import 'package:sampleproject/presentation_layer/provider/locale_bloc.dart';

import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale_bloc.freezed.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale_event.dart';
part 'locale_state.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc() : super(const LocaleState.initial()) {
    on<LocaleEvent>((event, emit) {
      event.map(
        started: (e) {
          emit(const LocaleState.loaded(Locale('en')));  // Default to English
        },
        changeLocale: (e) {
          emit(LocaleState.loaded(e.newLocale));  // Update with new locale
        },
      );
    });
  }
}

