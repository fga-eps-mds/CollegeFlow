import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/base_page.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
    this.description = '',
  }) : super(
          key: key,
        );

  final String description;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      content: Align(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: spacingXXS,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlowIcon.error(
                color: colorError,
                size: spacingLG,
              ),
              Text(
                description,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
