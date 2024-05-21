import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/languages/app_localizations.dart';
import 'package:flutter_store_app/core/styles/theme/app_colors_with_theme.dart';
import 'package:flutter_store_app/core/styles/theme/app_images_with_theme.dart';

extension ContextExtension on BuildContext {
  AppColorsWithTheme get color => Theme.of(this).extension<AppColorsWithTheme>()!;

  AppImagesWithTheme get images => Theme.of(this).extension<AppImagesWithTheme>()!;

  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

  String translate(String langKey) {
    return AppLocalizations.of(this)!.translate(langKey).toString();
  }

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }

  void pop(String routeName) {
    Navigator.of(this).pop(routeName);
  }
}
