import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  void writeToSharedPrefs(String token, String login, String password, String user) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
    prefs.setString('login', login);
    prefs.setString('password', password);
    prefs.setString('user', user);
  }
}