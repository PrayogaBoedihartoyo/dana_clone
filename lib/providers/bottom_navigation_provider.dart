import 'package:flutter/cupertino.dart';

class BottomNavProvider extends ChangeNotifier {
  int selectedIndex = 0;

  void onSelected(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}