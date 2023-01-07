import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { email, password, hasUserEnter }

class SharedManager {
  SharedPreferences? _preferences;

  SharedManager() {
    init();
  }

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // Set String
  Future<void> setString(SharedKeys key, String value) async {
    _checkPreferences();
    _preferences ?? await _preferences?.setString(key.name, value);
  }

  Future<String> getString(SharedKeys key) async {
    return _preferences?.getString(key.name) ?? '';
  }

  Future<void> setBool(SharedKeys key, bool value) async {
    _checkPreferences();
    _preferences ?? await _preferences?.setBool(key.name, value);
  }

  Future<bool> getBool(SharedKeys key) async {
    return _preferences?.getBool(key.name) ?? false;
  }

  void _checkPreferences() {
    if (_preferences == null) throw 'anan1234';
  }
}
