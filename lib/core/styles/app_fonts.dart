import 'package:flutter/material.dart';

class FontFamilyHelper {
  FontFamilyHelper._privateFontFamilyHelperConstructor();

  static final FontFamilyHelper _instance = FontFamilyHelper._privateFontFamilyHelperConstructor();

  static FontFamilyHelper get instance => _instance;

  static const String arabicCairoFont = "Cairo";
  static const String englishPoppingFont = "Popping";
}

class FontWeightHelper {
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight regular = FontWeight.w400;
}
