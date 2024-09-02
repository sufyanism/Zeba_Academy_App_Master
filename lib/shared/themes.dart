import 'package:flutter/material.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';

ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: kBackgroundColor,
  useMaterial3: false,
  primaryColor: Colors.white,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 93,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
      fontFamily: 'Poppins',
    ),
    displayMedium: TextStyle(
      fontSize: 58,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
      fontFamily: 'Poppins',
    ),
    displaySmall: TextStyle(
      fontSize: 46,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    ),
    headlineMedium: TextStyle(
      fontSize: 33,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      fontFamily: 'Poppins',
    ),
    headlineSmall: TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    ),
    titleLarge: TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      fontFamily: 'Poppins',
    ),
    titleMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      fontFamily: 'Poppins',
    ),
    titleSmall: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      fontFamily: 'Poppins',
    ),
    bodyLarge: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      fontFamily: 'Poppins',
    ),
    bodyMedium: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      fontFamily: 'Poppins',
    ),
    labelLarge: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      fontFamily: 'Poppins',
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      fontFamily: 'Poppins',
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      fontFamily: 'Poppins',
    ),
  ),
  appBarTheme: const AppBarTheme(
    color: kBackgroundColor,
    titleSpacing: 0,
    elevation: 0,
    foregroundColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
);
