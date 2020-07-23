import 'package:flutter/material.dart';

class ThemeNotify extends ChangeNotifier {
  ThemeData _themeData;

  ThemeNotify(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }
}
