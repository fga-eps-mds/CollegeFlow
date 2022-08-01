import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;

  final TextAlign? textAlign;
  final Color? color;
  AppText(
    this.text, {
    this.textAlign,
    this.color,
  });

  @override
  Widget build(BuildContext) {
    return Text(text,
        textAlign: textAlign,
        style: TextStyle(
          color: color ?? flowColorWhite,
        ));
  }
}
