import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData get({required String name}) =>
      name == 'light' ? _lightTheme : _darkTheme;

  static get _lightTheme => ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          backgroundColor: Color(0xFFFF5510),
          foregroundColor: Colors.white,
        ),
      );

  static get _darkTheme => ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFF5510), foregroundColor: Colors.white));
}
