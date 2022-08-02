import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  ThemeData themeData = ThemeData(
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w900,
        fontSize: 58,
        color: textColor,
      ),
      displayMedium: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w900,
        fontSize: 45,
        color: textColor,
      ),
      displaySmall: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w900,
        fontSize: 36,
        color: textColor,
      ),
      headlineLarge: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w600,
        fontSize: 32,
        color: textColor,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w600,
        fontSize: 24,
        color: textColor,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: textColor,
      ),
      titleLarge: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w400,
        fontSize: 22,
        color: textColor,
      ),
      titleMedium: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: textColor,
      ),
      titleSmall: TextStyle(
        fontFamily: 'OctinCollege',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: textColor,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: textColor,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: textColor,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        fontSize: 11,
        color: textColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: textColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: textColor,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: textColor,
      ),
    ),
    primaryColor: const Color(0xffce107c),
    indicatorColor: const Color(0xFF807A6B),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    backgroundColor: Colors.white,
    // tabBarTheme: lightTheme.tabBarTheme.copyWith(
    //   labelColor: Color(0xffce107c),
    //   unselectedLabelColor: Colors.grey,
    // ),
    // buttonTheme: lightTheme.buttonTheme.copyWith(
    //   buttonColor: flowColorRed,
    // ),
    errorColor: flowColorRed,
  );
}
