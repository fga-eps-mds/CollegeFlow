import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/icons/sizes.dart';
import 'package:college_flow_app/config/design_system/data/object_styles/object_styles.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

class ReviewScoreTag extends StatelessWidget {
  const ReviewScoreTag({
    Key? key,
    required this.reviewScore,
  }) : super(
          key: key,
        );

  final double reviewScore;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      padding: const EdgeInsets.symmetric(
        horizontal: spacingNano,
        vertical: spacingAtom,
      ),
      decoration: BoxDecoration(
        color: colorSecondary,
        borderRadius: BorderRadius.circular(
          objectStyleBorderRadiusPill,
        ),
      ),
      child: Row(
        children: [
          Text(
            '$reviewScore',
            style: const TextStyle(
              fontFamily: 'OctinCollege',
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          const HSpacer.atom(),
          const FlowIcon.star(
            size: iconSizeXS,
          ),
        ],
      ),
    );
  }
}
