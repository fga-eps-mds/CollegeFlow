import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

class WalkthroughBasePage extends StatelessWidget {
  final String title;
  final String description;
  final String imgPath;

  const WalkthroughBasePage({
    Key? key,
    required this.title,
    required this.description,
    required this.imgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: spacingNano,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VSpacer.lg(),
          Text(
            title,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: colorWhite,
                ),
          ),
          const VSpacer.nano(),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: colorWhite,
                ),
          ),
          const VSpacer.lg(),
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  width: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorLightPrimary,
                  ),
                ),
              ),
              Image(image: AssetImage(imgPath)),
              const SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }
}
