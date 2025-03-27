import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelperFetchUserInfo {
  static Future<void> saveUserData(String username, String email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
    await prefs.setString('email', email);
  }

  static Future<Map<String, String>> getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String username = prefs.getString('username') ?? '';
    String email = prefs.getString('email') ?? '';
    return {'username': username, 'email': email};
  }
  static Future<void> clearUserData() async {  // New function
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('username');
    await prefs.remove('email');
  }
}
