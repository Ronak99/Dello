import 'package:dello/enum/toast_type.dart';
import 'package:dello/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static void showToast(String message, ToastType toastType,
      [Toast toastLength = Toast.LENGTH_LONG, bool checkPlatform = false]) {
    ToastGravity gravity = ToastGravity.BOTTOM;

    Fluttertoast.showToast(
      msg: message,
      toastLength: toastLength,
      gravity: gravity,
      timeInSecForIos: 2,
      fontSize: 16.0,
      backgroundColor:
          toastType != ToastType.SUCCESS ? lightThemeRed : lightThemeGreen,
    );
  }

  static void navigateTo(context, Widget screen) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => screen));

  static void replaceWith(context, Widget screen) => Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => screen));

  static void pushAndRemovePrevious(context, Widget screen) =>
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => screen),
          (Route<dynamic> route) => false);
}
