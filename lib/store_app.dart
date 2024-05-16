import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_store_app/core/app/connectivity_controller.dart';
import 'package:flutter_store_app/core/app/environment.dart';
import 'package:flutter_store_app/core/shared/screens/disconnect_screen.dart';

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
                title: 'Flutter Demo',
                debugShowCheckedModeBanner:
                    EnvironmentVariables.instance.getEnvironmentMode == EnvironmentType.development,
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                home: AppBar(title: const Text('Flutter Demo Home Page')),
              ),
            );
          } else {
            return const MaterialApp(
                title: "No Internet Connection", debugShowCheckedModeBanner: true, home: NoInternetConnectionScreen());
          }
        });
  }
}
