import 'package:dello/constants/string_constants.dart';
import 'package:dello/locator.dart';
import 'package:dello/services/shared_preference_service.dart';
import 'package:dello/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MultiProviderViewModel extends BaseViewModel {
  final SharedPreferencesService _sharedPreferencesService =
      locator<SharedPreferencesService>();

  ThemeData _previousTheme;

  Future<void> init() async {
    bool previousThemeWasDark =
        await _sharedPreferencesService.getBool(CURRENT_THEME_KEY);
    if (previousThemeWasDark != null) {
      _previousTheme =
          previousThemeWasDark ? AppTheme.darkTheme : AppTheme.lightTheme;
    }
    notifyListeners();
  }

  ThemeData getPreviouslySavedTheme() => _previousTheme ?? AppTheme.lightTheme;
}
