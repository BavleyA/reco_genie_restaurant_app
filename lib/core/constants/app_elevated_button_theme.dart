import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final ElevatedButtonThemeData lightElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: const BorderSide(
        color: Colors.blue,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18.0),
      textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
      ),
    ),
  );

  static final ElevatedButtonThemeData darkElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: const BorderSide(
        color: Colors.blue,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18.0),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  );
}