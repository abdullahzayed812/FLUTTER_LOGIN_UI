import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  AppSharedPreferences._privateAppSharedPreferencesConstructor();

  static final AppSharedPreferences _instance =
      AppSharedPreferences._privateAppSharedPreferencesConstructor();

  static AppSharedPreferences get instance => _instance;

  static late SharedPreferences sharedPreferences;

  Future<dynamic> instantiatePreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  SharedPreferences get getPreferenceInstance => sharedPreferences;

  Future<dynamic> setString(String key, String value) async {
    await sharedPreferences.setString(key, value);
  }

  String? getString(String key) {
    return sharedPreferences.getString(key);
  }

  Future<dynamic> setBool(String key, bool booleanValue) async {
    await sharedPreferences.setBool(key, booleanValue);
  }

  bool? getBool(String key) {
    return sharedPreferences.getBool(key);
  }

  Future<dynamic> setDouble(String key, double doubleValue) async {
    await sharedPreferences.setDouble(key, doubleValue);
  }

  double? getDouble(String key) {
    return sharedPreferences.getDouble(key);
  }

  Future<dynamic> setInt(String key, int intValue) async {
    await sharedPreferences.setInt(key, intValue);
  }

  int? getInt(String key) {
    return sharedPreferences.getInt(key);
  }

  Future<dynamic> remove(String key) async {
    await sharedPreferences.remove(key);
  }

  bool contains(String key) {
    if (sharedPreferences.get(key) == null) {
      return false;
    } else {
      return true;
    }
  }

  Future<dynamic> clear() async {
    await sharedPreferences.clear();
  }
}
