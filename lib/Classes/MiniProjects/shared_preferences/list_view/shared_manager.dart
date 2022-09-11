import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { cities }

class SharedManager {
  SharedPreferences? preferences;

  SharedManager();

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  Future<void> setString(SharedKeys key, String value) async {
    _checkPreferences();
    await preferences?.setString(key.name, value);
  }

  Future<void> setStringList(SharedKeys key, List<String> list) async {
    _checkPreferences();
    await preferences?.setStringList(key.name, list);
  }

  String getString(SharedKeys key) {
    _checkPreferences();
    return preferences?.getString(key.name) ?? '';
  }

  List<String> getStringList(SharedKeys key) {
    _checkPreferences();
    return preferences?.getStringList(key.name) ?? ['mert'];
  }

  void _checkPreferences() {
    if (preferences == null) throw 'CANNOT ACCESS TO DB';
  }
}
