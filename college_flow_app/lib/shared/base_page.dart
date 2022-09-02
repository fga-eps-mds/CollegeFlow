import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    Key? key,
    required this.content,
    this.hasBackButton = true,
  }) : super(
          key: key,
        );

  final Widget content;
  final bool hasBackButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        elevation: 0,
        automaticallyImplyLeading: hasBackButton,
      ),
      body: SafeArea(child: content),
    );
  }
}
