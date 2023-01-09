import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { enter, email, password }

class SharedManager {
  SharedPreferences? preferences;

  SharedManager();

  // initialze
  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  // check preferences, if preferences is null throw an error
  void _checkPrefences() {
    if (preferences == null) throw 'Shared Error!';
  }

  // saves string values
  Future<void> saveString(SharedKeys key, String value) async {
    _checkPrefences();
    await preferences?.setString(key.name, value);
  }

  // saves bool values
  Future<void> saveBool(SharedKeys key, bool value) async {
    _checkPrefences();
    await preferences?.setBool(key.name, value);
  }

  // for email and password keys
  String? getString(SharedKeys key) {
    _checkPrefences();
    return preferences?.getString(key.name);
  }

  // for enter key
  bool? getBool(SharedKeys key) {
    _checkPrefences();
    return preferences?.getBool(key.name);
  }
}
