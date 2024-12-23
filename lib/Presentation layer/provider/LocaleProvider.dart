import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('en'); // Default language is Spanish

  Locale get locale => _locale;

  // Method to change locale
  void changeLocale(Locale newLocale) {

      _locale = newLocale;
      notifyListeners(); // Notify listeners to rebuild the UI

  }
}
