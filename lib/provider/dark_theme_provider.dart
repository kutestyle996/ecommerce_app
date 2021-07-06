import 'package:ecommerce_app/models/dart_theme_prefs.dart';
import 'package:flutter/cupertino.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePrefs prefs = DarkThemePrefs();
  bool _darkMode =  false;
  bool get darkMode => _darkMode;

  set darkMode(bool value) {
    _darkMode = value;
    prefs.setDarkTheme(value);
    notifyListeners();
  }
}