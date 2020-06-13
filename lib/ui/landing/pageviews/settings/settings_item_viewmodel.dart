import 'package:dello/constants/string_constants.dart';
import 'package:dello/locator.dart';
import 'package:dello/provider/theme_provider.dart';
import 'package:dello/services/shared_preference_service.dart';
import 'package:stacked/stacked.dart';

class SettingsItemViewModel extends BaseViewModel {
  final SharedPreferencesService _sharedPreferencesService =
      locator<SharedPreferencesService>();

  final ThemeProvider _themeProvider;

  SettingsItemViewModel(this._themeProvider);

  bool getCurrentThemeSwitch() => _themeProvider.isDark();

  toggleSwitch(switchVal) {
    switchVal ? _themeProvider.setDarkTheme() : _themeProvider.setLightTheme();
    // keeping this in shared prefs
    _sharedPreferencesService.setBool(CURRENT_THEME_KEY, switchVal);
  }
}
