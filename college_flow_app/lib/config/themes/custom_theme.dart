import 'package:college_flow_app/config/themes/colors.dart';
import 'package:flutter/material.dart';

//TODO(Mauricio-Machado): Insert variants from guideStyle
ThemeData customLightTheme() {
  const AppColors colors = AppColors();

  TextTheme _customLightThemesTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1?.copyWith(
//  fontFamily:
        fontSize: 22.0,
        color: colors.green,
      ),
      headline6: base.headline6?.copyWith(fontSize: 15.0, color: Colors.orange),
      headline4: base.headline1?.copyWith(
        fontSize: 24.0,
        color: colors.white,
      ),
      headline3: base.headline1?.copyWith(
        fontSize: 22.0,
        color: Colors.grey,
      ),
      caption: base.caption?.copyWith(
        color: const Color(0xFFCCC5AF),
      ),
      bodyText2: base.bodyText2?.copyWith(color: const Color(0xFF807A6B)),
      bodyText1: base.bodyText1?.copyWith(color: Colors.brown),
    );
  }

  final ThemeData lightTheme = ThemeData.light();
  return lightTheme.copyWith(
    textTheme: _customLightThemesTextTheme(lightTheme.textTheme),
    primaryColor: Color(0xffce107c),
    indicatorColor: Color(0xFF807A6B),
    scaffoldBackgroundColor: Color(0xFFF5F5F5),
    primaryIconTheme: lightTheme.primaryIconTheme.copyWith(
      color: Colors.white,
      size: 20,
    ),
    iconTheme: lightTheme.iconTheme.copyWith(
      color: Colors.white,
    ),
    backgroundColor: Colors.white,
    tabBarTheme: lightTheme.tabBarTheme.copyWith(
      labelColor: Color(0xffce107c),
      unselectedLabelColor: Colors.grey,
    ),
    buttonTheme: lightTheme.buttonTheme.copyWith(
      buttonColor: colors.red,
    ),
    errorColor: colors.red,
  );
}
