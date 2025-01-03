part of 'locale_bloc.dart';

@freezed
class LocaleState with _$LocaleState {
  const factory LocaleState.initial() = _Initial;  // Initial state
  const factory LocaleState.loaded(Locale locale) = _Loaded;  // Loaded locale state
}
