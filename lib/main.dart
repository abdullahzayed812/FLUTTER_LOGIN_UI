import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app/app.dart';
import 'package:flutter_store_app/core/app/environment.dart';

Future<void> main() async {
  // Waiting for all configs loaded, and load flutter app.
  WidgetsFlutterBinding.ensureInitialized();

  EnvironmentVariables environmentVariables =
      await EnvironmentVariables.instance.initialize(environmentType: EnvironmentType.development);

  Platform.isAndroid
      ? Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: environmentVariables.getFirebaseApiKey, // current_key
              appId: environmentVariables.getFirebaseAppId, // mobilesdk_app_id
              messagingSenderId: environmentVariables.getFirebaseMessagingSenderId, // project_number
              projectId: environmentVariables.getFirebaseProductId)) // project_id
      : Firebase.initializeApp();

  runApp(const MyApp());
}
