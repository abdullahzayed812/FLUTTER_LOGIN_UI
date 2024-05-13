import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app/app.dart';

void main() {
  // Waiting for all configs loaded, and load flutter app.
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyC1EGoynj5mCXzw_iFbds5cJi_OXRybz9I", // current_key
              appId: "1:182474691900:android:ef5059b5d76d1fd475fa39", // mobilesdk_app_id
              messagingSenderId: "182474691900", // project_number
              projectId: "flutterstoreapp-df52d")) // project_id
      : Firebase.initializeApp();

  runApp(const MyApp());
}
