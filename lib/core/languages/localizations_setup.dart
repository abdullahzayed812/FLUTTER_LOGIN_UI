import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_store_app/core/languages/localizations.dart';

class LocalizationsSetup {
  static const List<Locale> supportedLocales = [Locale('en'), Locale('ar')];

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    DefaultCupertinoLocalizations.delegate,
  ];

  static Locale localeResolutionCallback(Locale? locale, Iterable<Locale> supportedLocales) {
    for (final supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale!.languageCode && supportedLocale.countryCode == locale.countryCode) {
        return supportedLocale;
      }
    }

    return supportedLocales.first;
  }
}
