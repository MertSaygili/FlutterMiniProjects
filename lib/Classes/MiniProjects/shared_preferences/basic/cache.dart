import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { cities }

class SharedManager {
  SharedPreferences? preferences;

  SharedManager();

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  void _checkPreferences() {
    if (preferences == null) throw 'Shared Preferences ERROR';
  }

  Future<void> saveStringItems(SharedKeys key, List<String> country) async {
    _checkPreferences();
    await preferences?.setStringList(key.name, country);
  }
}
