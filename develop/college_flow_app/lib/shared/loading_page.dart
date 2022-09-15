import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/base_page.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:college_flow_app/shared/widgets/loading.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({
    Key? key,
    this.description = '',
  }) : super(
          key: key,
        );

  final String description;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      hasBackButton: false,
      content: Align(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: spacingXXS,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlowLoading(
                maxHeight: spacingLG,
                maxWidth: spacingLG,
              ),
              const VSpacer.xxxs(),
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
