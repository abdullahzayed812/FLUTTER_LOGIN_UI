import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_store_app/core/languages/localizations_delegate.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate();

  late Map<String, String> _localizedStrings;

  Future<void> load() async {
    final String jsonString = await rootBundle.loadString("lang${locale.languageCode}.json");

    final Map<String, String> jsonMap = jsonDecode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  String? translate(String key) => _localizedStrings[key];

  bool get isEnglishLocale => locale.languageCode == "en";
}
