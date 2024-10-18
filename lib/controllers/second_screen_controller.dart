import 'package:flutter/material.dart';

class SecondScreenController with ChangeNotifier {
  Color currentColor = Colors.purple;
  static List<Color> colors = [
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.black,
  ];
  updateColor(Color newColor) {
    currentColor = newColor;
    notifyListeners();
  }
}
