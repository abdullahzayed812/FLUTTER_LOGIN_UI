import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/styles/images/app_images.dart';

class AppImagesWithTheme extends ThemeExtension<AppImagesWithTheme> {
  const AppImagesWithTheme({
    required this.bigNavBar,
    required this.homeBg,
  });

  final String? bigNavBar;
  final String? homeBg;

  @override
  ThemeExtension<AppImagesWithTheme> copyWith({
    String? bigNavBar,
    String? homeBg,
  }) {
    return AppImagesWithTheme(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  @override
  ThemeExtension<AppImagesWithTheme> lerp(covariant ThemeExtension<AppImagesWithTheme>? other, double t) {
    if (other is! AppImagesWithTheme) {
      return this;
    }

    return AppImagesWithTheme(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  static const AppImagesWithTheme dark = AppImagesWithTheme(
    bigNavBar: AppImages.bigIconNavBarDark,
    homeBg: AppImages.homeBgDark,
  );
  static const AppImagesWithTheme light = AppImagesWithTheme(
    bigNavBar: AppImages.bigIconNavBarLight,
    homeBg: AppImages.homeBgLight,
  );
}
