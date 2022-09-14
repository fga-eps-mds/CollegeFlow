import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/object_styles/object_styles.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

class TeacherTag extends StatelessWidget {
  const TeacherTag({
    Key? key,
    required this.teacherName,
  }) : super(
          key: key,
        );

  final String teacherName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: spacingNano,
        vertical: spacingQuarck,
      ),
      decoration: BoxDecoration(
        color: colorSecondary,
        borderRadius: BorderRadius.circular(
          objectStyleBorderRadiusLarge,
        ),
      ),
      child: Row(
        children: [
          const FlowIcon.professorTag(),
          const HSpacer.quarck(),
          Expanded(
            child: Text(
              teacherName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: 'OctinCollege',
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
