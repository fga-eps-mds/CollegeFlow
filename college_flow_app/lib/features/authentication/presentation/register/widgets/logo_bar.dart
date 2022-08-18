import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/flow_icon_button.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
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
          const VSpacer.lg(),
          Align(
            alignment: Alignment.centerLeft,
            child: FlowIconButton(
              icon: const FlowIcon.chevronLeft(),
              onTap: Navigator.of(context).pop,
            ),
          ),
          Image.asset(
            'assets/imgs/logo.png',
          ),
          if (hasDescription)
            Text(
              description!,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
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
