import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  SharedPreferences _sharedPreferences;

  Future<bool> getBool(key) async {
    _sharedPreferences = await SharedPreferences.getInstance();
    bool boolVal = _sharedPreferences.getBool(key);
    return boolVal ?? false;
  }

  Future<bool> setBool(key, value) async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return _sharedPreferences.setBool(key, value);
  }
}
