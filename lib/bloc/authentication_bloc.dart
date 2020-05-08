import 'package:flutter/material.dart';

class AuthenticationBloc extends ChangeNotifier {
  String _aurthenticatedUser = 'Ihtiram@Heartfile.org';
  String _lastSignedIn = DateTime.now().toString();
  String _lastmodified = DateTime.now().toString();

  String get authenticatedUser => _aurthenticatedUser;
  String get lastSignIn => _lastSignedIn.toString();
  String get lastModified => _lastmodified.toString();

  set authenticatedUser(String val) {
    _aurthenticatedUser = val;
    notifyListeners();
  }

  set lastSignIn(String val) {
    _lastSignedIn = val;
    notifyListeners();
  }

  setlastModified(String val) {
    _lastmodified = val;
    notifyListeners();
  }
}
