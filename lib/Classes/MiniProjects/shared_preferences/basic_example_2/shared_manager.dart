import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { email }

class SharedManager {
  SharedPreferences? preferences;

  SharedManager();

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  void _checkPrefences() {
    if (preferences == null) throw 'Shared Error!';
  }

  Future<void> saveString(SharedKeys key, String value) async {
    _checkPrefences();
    await preferences?.setString(key.name, value);
  }

  String? getString(SharedKeys key) {
    _checkPrefences();
    return preferences?.getString(key.name);
  }
}
