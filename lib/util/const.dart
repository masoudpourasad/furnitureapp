import 'package:flutter/material.dart';

class Constants {
  static String appName = "Furniture App";

  static Color lightPrimary = const Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.orange;
  static Color darkAccent = Colors.orangeAccent;
  static Color lightBG = const Color(0xfffcfcff);
  static Color darkBG = Colors.black;

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    hintColor: lightAccent,
    cardColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      toolbarTextStyle: TextTheme(
        titleLarge: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ).bodyMedium,
      titleTextStyle: TextTheme(
        titleLarge: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ).titleLarge,
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      error: Colors.red,
      onError: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.black,
      primary: lightPrimary,
      secondary: lightAccent,
      surface: lightBG,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimary,
    hintColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      toolbarTextStyle: TextTheme(
        titleLarge: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ).bodyMedium,
      titleTextStyle: TextTheme(
        titleLarge: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ).titleLarge,
    ),
  );
}
