import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/styles/colors/dark_colors.dart';
import 'package:flutter_store_app/core/styles/colors/light_colors.dart';

class AppColorsWithTheme extends ThemeExtension<AppColorsWithTheme> {
  const AppColorsWithTheme({
    required this.mainColor,
    required this.bluePinkDark,
    required this.bluePinkLight,
    required this.textColor,
    required this.textFormBorder,
    required this.navbarBackground,
    required this.navbarSelectedTab,
    required this.containerShadow1,
    required this.containerShadow2,
    required this.containerLinear1,
    required this.containerLinear2,
  });

  final Color? mainColor;
  final Color? bluePinkDark;
  final Color? bluePinkLight;
  final Color? textColor;
  final Color? textFormBorder;
  final Color? navbarBackground;
  final Color? navbarSelectedTab;
  final Color? containerShadow1;
  final Color? containerShadow2;
  final Color? containerLinear1;
  final Color? containerLinear2;

  @override
  ThemeExtension<AppColorsWithTheme> copyWith({
    Color? mainColor,
    Color? bluePinkDark,
    Color? bluePinkLight,
    Color? textColor,
    Color? textFormBorder,
    Color? navbarBackground,
    Color? navBarSelectedTab,
    Color? containerShadow1,
    Color? containerShadow2,
    Color? containerLinear1,
  }) {
    return AppColorsWithTheme(
      mainColor: mainColor,
      bluePinkDark: bluePinkDark,
      bluePinkLight: bluePinkLight,
      textColor: textColor,
      textFormBorder: textFormBorder,
      navbarBackground: navbarBackground,
      navbarSelectedTab: navBarSelectedTab,
      containerShadow1: containerShadow1,
      containerShadow2: containerShadow2,
      containerLinear1: containerLinear1,
      containerLinear2: containerLinear2,
    );
  }

  @override
  ThemeExtension<AppColorsWithTheme> lerp(covariant ThemeExtension<AppColorsWithTheme>? other, double t) {
    if (other is! AppColorsWithTheme) {
      return this;
    }

    return AppColorsWithTheme(
      mainColor: mainColor,
      bluePinkDark: bluePinkDark,
      bluePinkLight: bluePinkLight,
      textColor: textColor,
      textFormBorder: textFormBorder,
      navbarBackground: navbarBackground,
      navbarSelectedTab: navbarSelectedTab,
      containerShadow1: containerShadow1,
      containerShadow2: containerShadow2,
      containerLinear1: containerLinear1,
      containerLinear2: containerLinear2,
    );
  }

  static const AppColorsWithTheme dark = AppColorsWithTheme(
    mainColor: DarkColors.mainColor,
    bluePinkDark: DarkColors.darkBlue,
    bluePinkLight: DarkColors.lightBlue,
    textColor: DarkColors.white,
    textFormBorder: DarkColors.lightBlue,
    navbarBackground: DarkColors.darkNavbar,
    navbarSelectedTab: DarkColors.white,
    containerShadow1: DarkColors.lightBlack,
    containerShadow2: DarkColors.darkBlack,
    containerLinear1: DarkColors.lightBlack,
    containerLinear2: DarkColors.darkBlack,
  );
  static const AppColorsWithTheme light = AppColorsWithTheme(
    mainColor: LightColors.mainColor,
    bluePinkDark: LightColors.darkPink,
    bluePinkLight: LightColors.lightPink,
    textColor: LightColors.black,
    textFormBorder: LightColors.lightPink,
    navbarBackground: LightColors.mainColor,
    navbarSelectedTab: LightColors.darkPink,
    containerShadow1: LightColors.white,
    containerShadow2: LightColors.white,
    containerLinear1: LightColors.darkPink,
    containerLinear2: LightColors.lightPink,
  );
}
