import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF4169E1), // Royal Blue
    scaffoldBackgroundColor: const Color(0xFFF9FAFB), // Soft White
    hintColor: const Color(0xFF50C878), // Emerald Green
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xFF1C1C1C)), // Dark Gray
      bodyMedium: TextStyle(color: Color(0xFF6D6D6D)), // Slate Gray
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF4169E1), // Primary button color
      textTheme: ButtonTextTheme.primary,
    ),
    cardColor: const Color(0xFFFAFAFA), // Card background
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFF9FAFB),
      foregroundColor: Color(0xFF1C1C1C),
    ),
  );

  // Dark Theme
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF008080), // Teal
    scaffoldBackgroundColor: const Color(0xFF1E2A38), // Dark Blue
    hintColor: const Color(0xFF32CD32), // Lime Green
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xFFFFFFFF)), // White
      bodyMedium: TextStyle(color: Color(0xFFA1A1A1)), // Light Gray
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF008080), // Primary button color
      textTheme: ButtonTextTheme.primary,
    ),
    cardColor: const Color(0xFF283A47), // Card background
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1E2A38),
      foregroundColor: Color(0xFFFFFFFF),
    ),
  );
}
