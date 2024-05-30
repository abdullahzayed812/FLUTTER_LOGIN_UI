import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_app/core/app/cubit/app_state.dart';
import 'package:flutter_store_app/core/languages/languages_keys.dart';
import 'package:flutter_store_app/core/services/shared_preference/shared_preferences.dart';
import 'package:flutter_store_app/core/services/shared_preference/shared_preferences_keys.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppStateInitial());

  bool isDark = true;

  Future<void> toggleTheme({bool? themeMode}) async {
    if (themeMode != null) {
      emit(AppThemeLoaded(themeMode));
    } else {
      await AppSharedPreferences.instance
          .setBool(SharedPreferencesKeys.themeMode, !isDark)
          .then((_) => emit(AppThemeLoaded(!isDark)));
    }
  }

  void getSavedLanguage() {
    final String? languageCode = AppSharedPreferences.instance.contains(LanguagesKeys.language)
        ? AppSharedPreferences.instance.getString(LanguagesKeys.language)
        : "en";

    emit(AppLanguageLoaded(Locale(languageCode!)));
  }

  Future<void> _toggleLanguage(String languageCode) async {
    await AppSharedPreferences.instance.setString(LanguagesKeys.language, languageCode);

    emit(AppLanguageLoaded(Locale(languageCode)));
  }

  void changeLanguageToArabic() => _toggleLanguage("ar");
  void changeLanguageToEnglish() => _toggleLanguage("en");
}
