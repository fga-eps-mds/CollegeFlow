import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

import '../../../config/design_system/data/colors/colors.dart';
import '../../../config/design_system/data/spacing/spacing.dart';

class ListSubjectsCard extends StatelessWidget {
  const ListSubjectsCard({
    Key? key,
    this.description = "",
    this.title = "",
    this.textAlign = TextAlign.start,
  }) : super(
          key: key,
        );
  final String description;
  final String title;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: spacingXXS,
      ),
      color: colorPrimary,
      width: double.maxFinite,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: colorWhite,
                  ),
              textAlign: textAlign,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              description,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: colorWhite,
                  ),
              textAlign: textAlign,
            ),
          ),
          const VSpacer.xxxs(),
        ],
      ),
    );
  }
}
