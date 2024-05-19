import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app/core/app/connectivity_controller.dart';
import 'package:flutter_store_app/core/app/environment.dart';
import 'package:flutter_store_app/core/languages/localizations_setup.dart';
import 'package:flutter_store_app/core/router/app_router.dart';
import 'package:flutter_store_app/core/shared/screens/disconnect_screen.dart';
import 'package:flutter_store_app/core/styles/theme/app_theme.dart';

class StoreApp extends StatefulWidget {
  const StoreApp({super.key});

  @override
  State<StoreApp> createState() => _StoreAppState();
}

class _StoreAppState extends State<StoreApp> {
  late StreamSubscription<List<ConnectivityResult>> _connectivityStreamSubscription;

  @override
  void initState() {
    super.initState();

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
            return ScreenUtilInit(
              designSize: const Size(360, 690),
              minTextAdapt: true,
              child: MaterialApp(
                debugShowCheckedModeBanner:
                    EnvironmentVariables.instance.getEnvironmentMode == EnvironmentType.development,
                theme: AppTheme.darkTheme(),
                locale: const Locale('en'),
                supportedLocales: LocalizationsSetup.supportedLocales,
                localizationsDelegates: LocalizationsSetup.localizationsDelegates,
                localeResolutionCallback: LocalizationsSetup.localeResolutionCallback,
                onGenerateRoute: AppRouter.onGenerateRoute,
                initialRoute: AppRouter.homeScreen,
                home: GestureDetector(
                  onTap: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Scaffold(
                    appBar: AppBar(
                      title: const Text("Home Page"),
                      centerTitle: true,
                    ),
                  ),
                ),
              ),
            );
          } else {
            return MaterialApp(
                debugShowCheckedModeBanner: true,
                home: Scaffold(
                  appBar: AppBar(
                    title: const Text("No Internet Connection"),
                    centerTitle: true,
                  ),
                  body: const NoInternetConnectionScreen(),
                ));
          }
        });
  }
}
