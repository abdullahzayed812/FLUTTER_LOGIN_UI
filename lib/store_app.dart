import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app/core/app/connectivity_controller.dart';
import 'package:flutter_store_app/core/app/cubit/app_cubit.dart';
import 'package:flutter_store_app/core/app/cubit/app_state.dart';
import 'package:flutter_store_app/core/app/environment.dart';
import 'package:flutter_store_app/core/languages/app_localizations_setup.dart';
import 'package:flutter_store_app/core/router/app_router.dart';
import 'package:flutter_store_app/core/services/shared_preference/shared_preferences.dart';
import 'package:flutter_store_app/core/services/shared_preference/shared_preferences_keys.dart';
import 'package:flutter_store_app/core/shared/screens/disconnect_screen.dart';
import 'package:flutter_store_app/core/styles/theme/app_theme.dart';

class StoreApp extends StatefulWidget {
  const StoreApp({super.key});

  @override
  State<StoreApp> createState() => _StoreAppState();
}

class _StoreAppState extends State<StoreApp> {
  final AppCubit _appCubit = AppCubit();

  late StreamSubscription<List<ConnectivityResult>> _connectivityStreamSubscription;

  @override
  void initState() {
    super.initState();

    final bool? savedTheme = AppSharedPreferences.instance.getBool(SharedPreferencesKeys.themeMode);

    _appCubit.toggleTheme(themeMode: savedTheme);
    _appCubit.getSavedLanguage();

    _connectivityStreamSubscription = ConnectivityController.instance.initialize();
  }

  @override
  void dispose() {
    super.dispose();

    _connectivityStreamSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ConnectivityController.instance.isConnected,
        builder: (_, value, __) {
          if (value) {
            return BlocProvider<AppCubit>(
              create: (context) => _appCubit,
              child: ScreenUtilInit(
                designSize: const Size(360, 690),
                minTextAdapt: true,
                child: BlocBuilder<AppCubit, AppState>(
                    bloc: _appCubit,
                    builder: (context, state) {
                      return MaterialApp(
                        debugShowCheckedModeBanner:
                            EnvironmentVariables.instance.getEnvironmentMode == EnvironmentType.development,
                        theme: _appCubit.isDark ? AppTheme.darkTheme() : AppTheme.lightTheme(),
                        locale: state is AppLanguageLoaded ? state.locale : null,
                        supportedLocales: AppLocalizationsSetup.supportedLocales,
                        localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
                        localeResolutionCallback: AppLocalizationsSetup.localeResolutionCallback,
                        onGenerateRoute: AppRouter.onGenerateRoute,
                        initialRoute: AppRouter.signInScreen,
                        home: GestureDetector(
                          onTap: () {
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          child: Scaffold(
                            appBar: AppBar(title: const Text("Home Page"), centerTitle: true),
                          ),
                        ),
                      );
                    }),
              ),
            );
          } else {
            return MaterialApp(
                debugShowCheckedModeBanner: true,
                home: Scaffold(
                  appBar: AppBar(title: const Text("No Internet Connection"), centerTitle: true),
                  body: const NoInternetConnectionScreen(),
                ));
          }
        });
  }
}
