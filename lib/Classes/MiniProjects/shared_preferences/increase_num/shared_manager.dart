import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { num, cities }

class SharedManager {
  SharedPreferences? preferences;

  SharedManager();

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  void _checkPreferences() {
    if (preferences == null) throw 'Shared Preferences ERROR';
  }

  Future<void> setInt(SharedKeys key, int value) async {
    _checkPreferences();
    await preferences?.setInt(key.name, value);
  }

  int getInt(SharedKeys key) {
    _checkPreferences();
    return preferences?.getInt(key.name) ?? 0;
  }
}
