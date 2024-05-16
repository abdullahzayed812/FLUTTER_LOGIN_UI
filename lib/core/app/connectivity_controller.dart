import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._privateConnectivityController();

  static final ConnectivityController _instance = ConnectivityController._privateConnectivityController();

  static ConnectivityController get instance => _instance;

  ValueNotifier<bool> isConnected = ValueNotifier(false);

  StreamSubscription<List<ConnectivityResult>> initialize() {
    // final List<ConnectivityResult> result = await Connectivity().checkConnectivity();

    StreamSubscription<List<ConnectivityResult>> result =
        Connectivity().onConnectivityChanged.listen(isInternetConnection);

    return result;
  }

  bool isInternetConnection(List<ConnectivityResult> result) {
    if (result.contains(ConnectivityResult.none)) {
      isConnected.value = false;

      return false;
    } else if (result.contains(ConnectivityResult.mobile) || result.contains(ConnectivityResult.wifi)) {
      isConnected.value = true;

      return true;
    }

    return false;
  }
}
