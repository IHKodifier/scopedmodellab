import 'package:flutter/material.dart';

class CounterBloc extends ChangeNotifier {
  int _counter=2924;
  int get counter => _counter;

  set counter(int val) {
    _counter = val;
    notifyListeners();
  }
}
