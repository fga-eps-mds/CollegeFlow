import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  ThemeData themeData = ThemeData(
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w900,
        fontSize: 58,
        color: colorBlack,
      ),
      displayMedium: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w900,
        fontSize: 45,
        color: colorBlack,
      ),
      displaySmall: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w900,
        fontSize: 36,
        color: colorBlack,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w600,
        fontSize: 32,
        color: colorBlack,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w600,
        fontSize: 24,
        color: colorBlack,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: colorBlack,
      ),
      titleLarge: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w400,
        fontSize: 22,
        color: colorBlack,
      ),
      titleMedium: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: colorBlack,
      ),
      titleSmall: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: colorBlack,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: colorBlack,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: colorBlack,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 11,
        color: colorBlack,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: colorBlack,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: colorBlack,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: colorBlack,
      ),
    ),
    primaryColor: const Color(0xffce107c),
    indicatorColor: const Color(0xFF807A6B),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    backgroundColor: Colors.white,
    errorColor: colorError,
  );
}
