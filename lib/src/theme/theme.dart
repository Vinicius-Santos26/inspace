import 'package:flutter/material.dart';

const _primaryColor = Colors.blue;
const _secondaryColor = Colors.green;
const _iconColor = Colors.white;
const _textColor = Colors.white;

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: _primaryColor,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: _textColor, fontSize: 24),
      backgroundColor: _primaryColor,
      iconTheme: IconThemeData(color: _iconColor),
    ));

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: _secondaryColor,
  appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: _textColor, fontSize: 24),
      backgroundColor: _secondaryColor,
      iconTheme: IconThemeData(color: _iconColor)),
);
