import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/styles/colors/dark_colors.dart';
import 'package:flutter_store_app/core/styles/colors/light_colors.dart';

class AppColorsWithTheme extends ThemeExtension<AppColorsWithTheme> {
  const AppColorsWithTheme({required this.mainColor});

  final Color? mainColor;

  @override
  ThemeExtension<AppColorsWithTheme> copyWith({Color? mainColor}) {
    return AppColorsWithTheme(mainColor: mainColor);
  }

  @override
  ThemeExtension<AppColorsWithTheme> lerp(covariant ThemeExtension<AppColorsWithTheme>? other, double t) {
    if (other is! AppColorsWithTheme) {
      return this;
    }

    return AppColorsWithTheme(mainColor: mainColor);
  }

  static const AppColorsWithTheme dark = AppColorsWithTheme(mainColor: DarkColors.mainColor);
  static const AppColorsWithTheme light = AppColorsWithTheme(mainColor: LightColors.mainColor);
}
