import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_store_app/core/languages/app_localizations.dart';

class AppLocalizationsSetup {
  static const Iterable<Locale> supportedLocales = [Locale('en'), Locale('ar')];

  static const Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    DefaultCupertinoLocalizations.delegate,
  ];

  static Locale localeResolutionCallback(Locale? deviceLocale, Iterable<Locale> supportedLocales) {
    for (final locale in supportedLocales) {
      if (deviceLocale != null && locale.languageCode == deviceLocale.languageCode) {
        return deviceLocale;
      }
    }

    return supportedLocales.first;
  }
}
