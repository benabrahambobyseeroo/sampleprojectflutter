part of 'locale_bloc.dart';

@freezed
class LocaleEvent with _$LocaleEvent {
  const factory LocaleEvent.started() = _Started;  // Initial event
  const factory LocaleEvent.changeLocale(Locale newLocale) = _ChangeLocale;  // Locale change event
}
