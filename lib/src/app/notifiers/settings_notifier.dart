import 'package:flutter/material.dart';

class SettingsNotifier extends ChangeNotifier {
  bool _isDarkModeEnabled = false;

  get isDarkModeEnabled => _isDarkModeEnabled;

  void toggleTheme(bool darkModeEnabled) {
    _isDarkModeEnabled = darkModeEnabled;
    notifyListeners();
  }
}
