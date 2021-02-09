import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Heroes with ChangeNotifier {
  String _heroe = 'Batman';
  Color color = Colors.black;

  String get getHeroe => _heroe;
  set setHeroe(String name) {
    _heroe = name;
    this.color = (name == 'Batman') ? Colors.black : Colors.grey;
    notifyListeners();
  }
}
