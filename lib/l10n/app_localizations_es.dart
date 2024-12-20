import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get login => 'Iniciar sesión';

  @override
  String get username => 'Nombre de usuario';

  @override
  String get password => 'Contraseña';

  @override
  String get forgot_password => '¿Olvidaste tu contraseña?';

  @override
  String get or_login_with => 'o iniciar sesión con';

  @override
  String get signup => '¿No tienes una cuenta? Regístrate';

  @override
  String hello(Object name) {
    return 'Hola $name,';
  }

  @override
  String get whatWouldYouLikeToDo => '¿Qué te gustaría hacer hoy?';

  @override
  String get history => 'Historia';

  @override
  String get trackDelivery => 'Rastrear entrega';

  @override
  String get delivered => 'Entregado';

  @override
  String get send => 'Enviar';

  @override
  String get fetch => 'Obtener';

  @override
  String get sell => 'Vender';

  @override
  String get menu => 'Menú';

  @override
  String get choose_user_category => 'Por favor elija una \n categoría de usuario';
}
