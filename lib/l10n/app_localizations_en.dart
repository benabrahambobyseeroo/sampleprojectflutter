import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get login => 'Login';

  @override
  String get username => 'Username';

  @override
  String get password => 'Password';

  @override
  String get forgot_password => 'Forgot Password';

  @override
  String get or_login_with => 'or login with';

  @override
  String get signup => 'Do not have an account? Sign up';

  @override
  String hello(Object name) {
    return 'Hi $name,';
  }

  @override
  String get whatWouldYouLikeToDo => 'What would you like to do today?';

  @override
  String get history => 'History';

  @override
  String get trackDelivery => 'Track Delivery';

  @override
  String get delivered => 'Delivered';

  @override
  String get send => 'Send';

  @override
  String get fetch => 'Fetch';

  @override
  String get sell => 'Sell';

  @override
  String get menu => 'Menu';

  @override
  String get choose_user_category => 'Please choose a \n user category';
}
