import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.title,
    required this.description,
  }) : super(
          key: key,
        );

  final String title;
  final String description;

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
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: colorWhite,
                  ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const VSpacer.quarck(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                description,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: colorWhite,
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
