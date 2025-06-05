import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHandler {
  static const String loginKey = 'isLoggedIn';

  static Future<void> saveLogin(bool isLoggedIn) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(loginKey, isLoggedIn);
  }

  static Future<bool> getLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(loginKey) ?? false;
  }

  static Future<void> clearLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(loginKey);
  }
}
