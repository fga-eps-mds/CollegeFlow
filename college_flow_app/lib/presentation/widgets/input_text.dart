import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String? placeholder;
  final Color? color;
  InputText({this.placeholder, this.color});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder:
            const OutlineInputBorder(borderSide: BorderSide(color: secondary)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        labelText: placeholder,
        labelStyle: TextStyle(fontSize: 16, color: color),
      ),
    );
  }
}
