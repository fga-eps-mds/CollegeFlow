import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/icons/sizes.dart';
import 'package:college_flow_app/config/design_system/data/object_styles/object_styles.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:flutter/material.dart';

class NoReviewsCard extends StatelessWidget {
  const NoReviewsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.symmetric(
        horizontal: spacingXXXS,
        vertical: spacingNano,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(objectStyleBorderRadiusDefault),
        color: colorWhite,
        border: Border.all(
          color: colorSecondary,
          width: spacingAtom,
        ),
      ),
      child: Column(
        children: [
          const FlowIcon.error(
            color: colorSecondary,
            size: iconSizeXL,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Ainda não exitem reviews para essa matéria. Gostaria de criar uma avaliação?',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
