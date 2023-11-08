import 'package:flutter/material.dart';

const primaryColor = Color(0xFF0D99FF);
const secondaryColor = Color(0xFF757575);
const backgroundColor = Color.fromARGB(255, 222, 220, 220);

ThemeData primaryTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: Colors.white,
    secondary: secondaryColor,
    onSecondary: Colors.white,
    error: Color(0xFFE64C2A),
    onError: Colors.white,
    background: backgroundColor,
    onBackground: secondaryColor,
    surface: secondaryColor,
    onSurface: Colors.white,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    ),
  ),
  // elevatedButtonTheme: const ElevatedButtonThemeData(
  //   style: ButtonStyle(
  //       // backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  //       ),
  // ),
  inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      filled: true,
      fillColor: Colors.white),
);
