import 'package:dello/enum/toast_type.dart';
import 'package:dello/utils/utils.dart';

class Validator {
  static String validateName(String value) {
    Pattern pattern = '[a-zA-Z]';

    RegExp regex = new RegExp(pattern);

    if (value.isEmpty) {
      return "Field cannnot be empty";
    } else if (!regex.hasMatch(pattern)) {
      return "Names cannot contain number or symbols";
    }

    return null;
  }

  static bool urlValid(url) {
    Pattern pattern =
        r"^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$";
    RegExp regex = new RegExp(pattern);
    return regex.hasMatch(url);
  }

  static String validateUrl(String url) {
    if (url.isNotEmpty) {
      if (!urlValid(url)) {
        return "Invalid Url - Make sure to include HTTP or HTTPs";
      }
    }
    return null;
  }

  static String simpleValidation(String value) {
    if (value.isEmpty) {
      return "Field cannot be left empty";
    }
    return null;
  }

  static String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      Utils.showToast("Enter valid email address", ToastType.WARNING);
      return "Invalid Email";
    } else
      return null;
  }

  static String dateValidation(String value) {
    Pattern pattern = r'^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$';

    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      Utils.showToast("Invalid Date", ToastType.WARNING);
      return "Please enter date in dd/mm/yyyy format";
    } else
      return null;
  }

  static String validatePhone(String value) {
    Pattern pattern = '[^0-9 ]';

    RegExp regex = new RegExp(pattern);

    if (value.isEmpty) {
      return "Field cannnot be empty";
    } else if (!regex.hasMatch(pattern)) {
      return "Please enter valid phone number";
    } else if (value.length < 10 || value.length > 10) {
      return "10 Digits Phone Numbers are accepted";
    }

    return null;
  }

  static String validatePassword(String value) {
    if (value.isEmpty) {
      return "Field cannnot be empty";
    } else if (value.length < 5) {
      return "Weak Password";
    }
    return null;
  }
}
