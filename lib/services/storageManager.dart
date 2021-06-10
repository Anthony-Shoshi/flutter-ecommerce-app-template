import 'package:shared_preferences/shared_preferences.dart';

class StorageManager {
  static late SharedPreferences _prefs;

  static init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future storeData(String key, String value) async {
    await _prefs.setString(key, value);
  }

  getData(String key) {
    return _prefs.getString(key);
  }

  deleteData(String key) {
    _prefs.remove(key);
  }
}
