import 'package:dello/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData;

  ThemeProvider(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  setDarkTheme() => setTheme(AppTheme.darkTheme);
  setLightTheme() => setTheme(AppTheme.lightTheme);

  toggleTheme() {
    _themeData != AppTheme.darkTheme ? setDarkTheme() : setLightTheme();
  }
}
