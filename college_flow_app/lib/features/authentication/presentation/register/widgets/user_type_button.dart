import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/object_styles/object_styles.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/flow_icon_button.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

class UserTypeButton extends StatelessWidget {
  const UserTypeButton({
    required this.icon,
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(
          key: key,
        );

  final FlowIcon icon;
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(spacingNano),
          decoration: BoxDecoration(
              color: colorPrimary,
              borderRadius: BorderRadius.circular(objectStyleBorderRadiusPill),
              border: Border.all(
                color: colorSecondary,
                width: spacingAtom,
              )),
          child: FlowIconButton(
            icon: icon,
            onTap: onTap,
          ),
        ),
        const VSpacer.nano(),
        Text(
          title,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ],
    );
  }
}
