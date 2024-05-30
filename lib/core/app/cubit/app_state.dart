import 'package:flutter/material.dart';

abstract class AppState {}

class AppStateInitial extends AppState {}

class AppThemeLoaded extends AppState {
  final bool isDark;

  AppThemeLoaded(this.isDark);
}

class AppLanguageLoaded extends AppState {
  final Locale locale;

  AppLanguageLoaded(this.locale);
}
