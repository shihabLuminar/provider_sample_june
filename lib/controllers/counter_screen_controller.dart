import 'package:flutter/material.dart';

class CounterScreenController with ChangeNotifier {
  int count = 10;
  String name = "shihab";

  onIncrement() {
    count++;
    print(count);
    notifyListeners();
  }
}
