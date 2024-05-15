import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._privateConnectivityController();

  static final ConnectivityController _instance = ConnectivityController._privateConnectivityController();

  static ConnectivityController get instance => _instance;

  ValueNotifier<bool> isConnected = ValueNotifier(false);

  Future<void> initialize() async {
    final List<ConnectivityResult> result = await Connectivity().checkConnectivity();

    isInternetConnection(result);

    Connectivity().onConnectivityChanged.listen(isInternetConnection);
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
