import 'package:flutter/widgets.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get getCurrentIndex => _currentIndex;

  setCurrentIndex(index) {
    _currentIndex = index;
    notifyListeners();
  }

  reset() {
    _currentIndex = 0;
  }
}
