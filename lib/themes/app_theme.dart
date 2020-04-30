import 'package:dello/constants/string_constants.dart';
import 'package:dello/themes/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final TextTheme _lightTextTheme = TextTheme(
    // for app bars
    title: TextStyle(
      fontSize: 25,
      fontFamily: THEME_FONT,
      color: Colors.black,
    ),
    overline: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      letterSpacing: 0.5,
      height: 1.5,
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    primaryColor: lightThemeBlue,
    backgroundColor: lightThemeBackgroundColor,
    fontFamily: THEME_FONT,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      onPrimary: Colors.red,
      primary: lightThemeBlue,
      background: lightThemeBackgroundColor,
      onBackground: lightThemeBackgroundColor.withOpacity(0.2),
      error: lightThemeRed,
      onError: lightThemeRed,
      surface: Colors.white,
      onSurface: Colors.deepOrangeAccent,
      secondary: Colors.deepPurpleAccent,
      onSecondary: Colors.grey,
      primaryVariant: Colors.lightBlue,
      secondaryVariant: Colors.pink,
    ),
    brightness: Brightness.light,
    textTheme: _lightTextTheme,
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: InputBorder.none,
      alignLabelWithHint: false,
      labelStyle: TextStyle(
        color: lightThemeFieldHintColor,
        fontWeight: FontWeight.w400,
        fontSize: 15,
        letterSpacing: 0.5,
        height: 1.5,
      ),
      errorStyle: TextStyle(
        color: lightThemeRed,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        height: 1.5,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: lightThemeBlue,
    colorScheme: ColorScheme(
      background: lightThemeBackgroundColor,
      brightness: Brightness.light,
      error: lightThemeRed,
      onError: lightThemeRed,
      surface: Colors.white,
      onPrimary: null,
      onBackground: lightThemeBackgroundColor.withOpacity(0.2),
      onSecondary: null,
      onSurface: null,
      primary: null,
      primaryVariant: null,
      secondary: null,
      secondaryVariant: null,
    ),
    brightness: Brightness.light,
    textTheme: _lightTextTheme,
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  );
}
