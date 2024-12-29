import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData get({required int hex}) => _lightTheme(hex);

  static _lightTheme(int hex) => ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(hex),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
          backgroundColor: Color(hex),
          foregroundColor: Colors.white,
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Color(hex),
        ),
        tabBarTheme: TabBarTheme(
          indicatorColor: Color(hex),
          labelColor: Color(hex),
        ),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateColor.resolveWith((states) {
            if (states.contains(WidgetState.selected)) return Color(hex);
            return Colors.black;
          }),
        ),
      );

  // static get _darkTheme => ThemeData(
  //     brightness: Brightness.dark,
  //     useMaterial3: true,
  //     appBarTheme: const AppBarTheme(
  //         backgroundColor: Color(0xFFFF5510), foregroundColor: Colors.white));
}
