import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    onBackground: Colors.white,
    primary: Colors.white,
    secondary: Colors.black,
    onSecondary: Colors.grey.shade800,
    tertiary: Colors.grey.shade200,
    onTertiary: Colors.black38,
    onPrimary: Colors.grey.shade900,
    onPrimaryContainer: Colors.grey.withOpacity(0.26),
  ),
);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    onBackground: Colors.black,
    primary: Colors.grey.shade900,
    secondary: Colors.grey.withOpacity(0.5),
    onSecondary: Colors.grey.shade400,
    tertiary: Colors.grey.shade900,
    onTertiary: Colors.white12,
    onPrimary: Colors.grey.shade200,
    onPrimaryContainer: Colors.grey.withOpacity(0.4),
  ),
);
