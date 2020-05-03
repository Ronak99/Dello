import 'package:dello/constants/string_constants.dart';
import 'package:dello/themes/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final TextTheme _lightTextTheme = TextTheme(
    // for app bars
    title: TextStyle(
      fontSize: 30,
      fontFamily: THEME_FONT,
      fontWeight: FontWeight.w700,
    ),
    body1: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 25,
      letterSpacing: 0.3,
      height: 1.5,
    ),
    body2: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18,
      letterSpacing: 0.3,
      height: 1.5,
      color: lightBody2Color,
    ),
    overline: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 15,
      letterSpacing: 0.3,
      height: 1.5,
    ),
    headline: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18,
      letterSpacing: 0.3,
      height: 1.5,
    ),
    subtitle: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 15,
      letterSpacing: 0.3,
      color: Colors.black54,
    ),
    subhead: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 15,
      letterSpacing: 0.3,
      height: 1.5,
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    primaryColor: lightThemeBlue,
    backgroundColor: lightThemeBackgroundColor,
    accentColor: lightAccentColor,

    primaryColorDark: Colors.black,
    fontFamily: THEME_FONT,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
      onSurface: lightThemeFieldHintColor,
      secondary: lightThemeContrastOnBackgroundColor,
      onSecondary: lightBody2Color,
      primaryVariant: Colors.lightBlue,
      secondaryVariant: Colors.pink,
    ),
    brightness: Brightness.light,
    textTheme: _lightTextTheme,
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black, size: 10),
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
    primaryColor: Colors.green,
    backgroundColor: Colors.red,
    fontFamily: THEME_FONT,
    buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap),
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
}
