import 'package:flutter/material.dart';

class DropProvider extends ChangeNotifier {
  var items = ['Ajmal', 'Jassim', 'Shibil', 'Abhi'];
  var firstvalue = 'Ajmal';
  dropUpdater(newvalue) {
    firstvalue = newvalue;
    notifyListeners();
  }
}
