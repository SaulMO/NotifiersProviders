import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Villain with ChangeNotifier {
  String _villain = 'Pingüino';
  Color color = Colors.black;

  String get getVillain => _villain;
  set setVillain(String name) {
    _villain = name;
    this.color = (name == 'Pingüino') ? Colors.black : Colors.grey;
    notifyListeners();
  }
}
