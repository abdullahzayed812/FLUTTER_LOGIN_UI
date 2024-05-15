import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvironmentType { production, development }

class EnvironmentVariables {
  EnvironmentVariables._privateEnvironmentVariablesConstructor();

  static final EnvironmentVariables _instance = EnvironmentVariables._privateEnvironmentVariablesConstructor();

  static EnvironmentVariables get instance => _instance;

  String _firebaseApiKey = "";
  String _firebaseAppId = "";
  String _firebaseMessagingSenderId = "";
  String _firebaseProductId = "";

  EnvironmentType _environmentMode = EnvironmentType.development;

  set setFirebaseApiKey(String key) => _firebaseApiKey = key;
  set setFirebaseAppId(String id) => _firebaseAppId = id;
  set setFirebaseMessagingSenderId(String id) => _firebaseMessagingSenderId = id;
  set setFirebaseProductId(String id) => _firebaseProductId = id;

  set setEnvironmentMode(EnvironmentType mode) => _environmentMode = mode;

  Future<EnvironmentVariables> initialize({required EnvironmentType environmentType}) async {
    switch (environmentType) {
      case EnvironmentType.production:
        await dotenv.load(fileName: ".env");
        break;

      case EnvironmentType.development:
        await dotenv.load(fileName: ".env");
    }

    setFirebaseApiKey = dotenv.get('GOOGLE_FIREBASE_API_KEY');
    setFirebaseAppId = dotenv.get('GOOGLE_FIREBASE_APP_ID');
    setFirebaseMessagingSenderId = dotenv.get('GOOGLE_FIREBASE_MESSAGING_SENDER_ID');
    setFirebaseProductId = dotenv.get('GOOGLE_FIREBASE_PROJECT_ID');

    setEnvironmentMode = environmentType;

    return instance;
  }

  String get getFirebaseApiKey => _firebaseApiKey;
  String get getFirebaseAppId => _firebaseAppId;
  String get getFirebaseMessagingSenderId => _firebaseMessagingSenderId;
  String get getFirebaseProductId => _firebaseProductId;

  EnvironmentType get getEnvironmentMode => _environmentMode;
}
