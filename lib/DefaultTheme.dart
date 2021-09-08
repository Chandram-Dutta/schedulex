import 'package:flutter/material.dart';

class DefaultTheme {
  ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    primaryColor: Colors.white,
    accentColor: Colors.red[900],
    backgroundColor: Colors.grey[900],
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
      headline2: TextStyle(
          fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
      headline3: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
      headline6: TextStyle(fontSize: 48),
      bodyText1: TextStyle(fontSize: 14.0),
      bodyText2: TextStyle(fontSize: 14.0, color: Colors.white),
    ),
  );
  ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[900],
    brightness: Brightness.dark,
    primaryColor: Colors.grey[900],
    accentColor: Colors.red[900],
    backgroundColor: Colors.white,
    textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black),
        headline3: TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
        headline6: TextStyle(fontSize: 36.0),
        bodyText1: TextStyle(fontSize: 14.0),
        bodyText2: TextStyle(fontSize: 14.0, color: Colors.black)),
  );
}
