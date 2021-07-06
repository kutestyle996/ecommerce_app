import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkMode, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkMode ? Colors.black : Colors.grey.shade300,
      primarySwatch: Colors.purple,
      primaryColor: isDarkMode ? Colors.black : Colors.grey.shade300,
      backgroundColor: isDarkMode ? Colors.grey.shade700 : Colors.white,
      disabledColor: Colors.grey,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: isDarkMode ? ColorScheme.dark() : ColorScheme.light(),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0.0
      )
    );
  }
}