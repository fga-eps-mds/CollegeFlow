import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/icons/flow_icon_data.dart';
import 'package:college_flow_app/config/design_system/data/icons/sizes.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/flow_icon_button.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

class ConfirmationBottomsheet extends StatelessWidget {
  const ConfirmationBottomsheet({
    Key? key,
    required this.onTap,
  }) : super(
          key: key,
        );

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(
        horizontal: spacingXXXS,
        vertical: spacingXXS,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: FlowIconButton(
              icon: FlowIconData.close,
              onTap: Navigator.of(context).pop,
              style: const FlowIconButtonStyle.black(),
            ),
          ),
          const VSpacer.xxxs(),
          const FlowIcon.warning(
            size: iconSizeXXL,
            color: colorPrimary,
          ),
          const VSpacer.xxxs(),
          Text(
            'Atenção',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const VSpacer.quarck(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: spacingXS,
            ),
            child: Text(
              'Ao criar uma review você não poderá editá-la nem removê-la.',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
          const VSpacer.xs(),
          Row(
            children: [
              const HSpacer.xxxs(),
              Expanded(
                child: FlowButton(
                  label: 'Continuar',
                  onTap: onTap,
                  style: const FlowButtonStyle.primary(),
                ),
              ),
            ],
          ),
          const VSpacer.xxxs(),
        ],
      ),
    );
  }
}
