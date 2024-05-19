import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/styles/images/app_images.dart';

class AppImagesWithTheme extends ThemeExtension<AppImagesWithTheme> {
  const AppImagesWithTheme({required this.imageWithTheme});

  final String? imageWithTheme;

  @override
  ThemeExtension<AppImagesWithTheme> copyWith({String? imageWithTheme}) {
    return AppImagesWithTheme(imageWithTheme: imageWithTheme);
  }

  @override
  ThemeExtension<AppImagesWithTheme> lerp(covariant ThemeExtension<AppImagesWithTheme>? other, double t) {
    if (other is! AppImagesWithTheme) {
      return this;
    }

    return AppImagesWithTheme(imageWithTheme: imageWithTheme);
  }

  static const AppImagesWithTheme dark = AppImagesWithTheme(imageWithTheme: AppImages.notFound);
  static const AppImagesWithTheme light = AppImagesWithTheme(imageWithTheme: AppImages.noInternetConnection);
}
