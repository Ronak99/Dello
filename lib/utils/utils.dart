import 'package:dello/enum/toast_type.dart';
import 'package:dello/themes/colors.dart';
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
}
