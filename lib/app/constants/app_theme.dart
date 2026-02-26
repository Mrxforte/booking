import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    primaryColor: Colors.grey,
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blueGrey,
      unselectedItemColor: Colors.grey,
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    primaryColor: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.blueGrey,
      unselectedItemColor: Colors.grey,
    ),
  );
}
