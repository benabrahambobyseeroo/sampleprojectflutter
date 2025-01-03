import 'package:flutter/material.dart';

enum Language implements Comparable<Language> {
  en(locale: Locale('en', 'US')),
  ar(locale: Locale('es', "SP"));

  const Language({
    required this.locale,
  });

  final Locale locale;

  @override
  int compareTo(Language other) => locale.hashCode - other.locale.hashCode;
}