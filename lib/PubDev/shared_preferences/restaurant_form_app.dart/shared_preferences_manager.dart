import 'package:shared_preferences/shared_preferences.dart';

enum SharedItemNames {
  name,
  phone,
  personCount,
  reservationDate,
  comment,
}

class SharedPreferencesManager {
  SharedPreferences? preferences;

  Future<void> initialize() async {
    preferences = await SharedPreferences.getInstance();
  }

  void isInitialize() {
    if (preferences == null) {
      throw 'Preferences has not initialized';
    }
  }

  void setInt(SharedItemNames key, int value) {
    preferences?.setInt(key.name, value);
  }

  void setString(SharedItemNames key, String value) {
    preferences?.setString(key.name, value);
  }

  void setDateTime(SharedItemNames key, String value) {}
}
