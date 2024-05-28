import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_store_app/core/app/cubit/app_state.dart';
import 'package:flutter_store_app/core/services/shared_preference/shared_preferences.dart';
import 'package:flutter_store_app/core/services/shared_preference/shared_preferences_keys.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppStateInitial());

  bool isDark = true;

  Future<void> toggleTheme({bool? themeMode}) async {
    if (themeMode != null) {
      isDark = themeMode;

      emit(AppStateLoaded(themeMode));
    } else {
      isDark = !isDark;

      await AppSharedPreferences.instance
          .setBool(SharedPreferencesKeys.themeMode, isDark)
          .then((_) => emit(AppStateLoaded(isDark)));
    }
  }
}
