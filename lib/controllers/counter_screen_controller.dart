import 'package:flutter/material.dart';

class CounterScreenController with ChangeNotifier {
  int count = 10;
  String name = "shihab";

  Color currentColor = Colors.purple;
  static List<Color> colors = [
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.black,
  ];

  onIncrement() {
    count++;
    print(count);
    notifyListeners();
  }

  updateColor(Color newColor) {
    currentColor = newColor;
    notifyListeners();
  }
}
