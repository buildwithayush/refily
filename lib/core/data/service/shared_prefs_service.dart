import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  final SharedPreferences _prefs;
  SharedPrefsService(this._prefs);

  static const String _themeKey = 'is_dark_mode';

  Future<void> setThemeMode(bool isDarkMode) async{
    await _prefs.setBool(_themeKey, isDarkMode);
  }

  bool getThemeMode(){
    return _prefs.getBool(_themeKey) ?? false;
  }
}