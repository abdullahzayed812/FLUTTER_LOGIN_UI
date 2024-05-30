import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/languages/languages_keys.dart';
import 'package:flutter_store_app/core/services/shared_preference/shared_preferences.dart';

class FontFamilyHelper {
  FontFamilyHelper._privateFontFamilyHelperConstructor();

  static final FontFamilyHelper _instance = FontFamilyHelper._privateFontFamilyHelperConstructor();

  static FontFamilyHelper get instance => _instance;

  static const String arabicCairoFont = "Cairo";
  static const String englishPoppingFont = "Popping";

  static String get getFontFamily =>
      AppSharedPreferences.instance.getString(LanguagesKeys.language) == "ar" ? arabicCairoFont : englishPoppingFont;
}

class FontWeightHelper {
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight regular = FontWeight.w400;
}
