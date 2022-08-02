import 'package:college_flow_app/config/design_system/data/icons/flow_icon_data.dart';
import 'package:college_flow_app/presentation/widgets/flow_icon.dart';
import 'package:college_flow_app/presentation/widgets/flow_icon_button.dart';
import 'package:college_flow_app/presentation/widgets/gap.dart';
import 'package:flutter/material.dart';

import '../../../config/design_system/data/colors/colors.dart';
import '../../../config/design_system/data/object_styles/object_styles.dart';
import '../../../config/design_system/data/spacing/spacing.dart';

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
              color: primary,
              borderRadius: BorderRadius.circular(objectStyleBorderRadiusPill),
              border: Border.all(
                color: secondary,
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
