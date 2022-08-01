import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:flutter/material.dart';

class LogoBar extends StatelessWidget {
  const LogoBar({
    Key? key,
    this.description,
    this.textAlign = TextAlign.center,
  }) : super(
          key: key,
        );

  final String? description;
  final TextAlign textAlign;

  bool get hasDescription => description != null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: spacingXXS),
      width: double.maxFinite,
      color: primary,
      child: Column(
        children: [
          const VSpacer.xs(),
          Image.asset(
            'assets/imgs/logo.png',
          ),
          if (hasDescription)
            Text(
              description!,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: white,
                  ),
              textAlign: textAlign,
            ),
          const VSpacer.xxxs(),
        ],
      ),
    );
  }
}
