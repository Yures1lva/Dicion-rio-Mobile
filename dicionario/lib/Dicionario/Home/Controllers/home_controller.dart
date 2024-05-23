import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {
  int? value = 0;

  void changeChip(bool selected, int index) {
    value = selected ? index : null;
    notifyListeners();
  }
}
