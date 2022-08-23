import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

import '../../config/design_system/data/colors/colors.dart';
import '../../config/design_system/data/spacing/spacing.dart';
import 'flow_icon.dart';
import 'flow_icon_button.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    this.description,
    this.title = "",
    this.textAlign = TextAlign.start,
  }) : super(
          key: key,
        );
  final String? description;
  final String title;
  final TextAlign textAlign;
  bool get hasDescription => description != null;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: spacingXXS, bottom: spacingNano, right: spacingXXS, left: spacingXXS),
      width: double.maxFinite,
      color: colorPrimary,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: FlowIconButton(
              icon: const FlowIcon.arrowLeft(color: colorWhite),
              onTap: Navigator.of(context).pop,
            ),
          ),
          Text(
              title,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: colorWhite,
                  ),
              textAlign: textAlign,
            ),

          if (hasDescription)
            Text(
              description!,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: colorWhite,
                  ),
              textAlign: textAlign,
            ),
          const VSpacer.xxxs(),
        ],
      ),
    );
  }
}