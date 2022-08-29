import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/shared/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../shared/widgets/flow_icon.dart';
import '../../../../shared/widgets/flow_icon_button.dart';

class WalkthroughBasePage extends StatelessWidget {
  WalkthroughBasePage({
    Key? key,
    required this.title,
    required this.description,
    required this.imgPath,
    required this.togglePage,
    this.isFinalPage = false,
  }) : super(key: key);

  final String title;
  final String description;
  final String imgPath;
  final bool isFinalPage;

  final Function(int page) togglePage;
  final _pageViewController = PageController();

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
            alignment: Alignment.center,
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
          const VSpacer.lg(),
          SizedBox(
            height: spacingMD,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: _pageViewController,
                  count: 2,
                  effect: const SwapEffect(
                    spacing: spacingXXXS,
                    dotHeight: spacingNano,
                    dotWidth: spacingNano,
                    dotColor: colorDarkPrimary,
                    activeDotColor: colorWhite,
                  ),
                  onDotClicked: togglePage,
                ),
                if (isFinalPage)
                  FlowIconButton(
                    icon: const FlowIcon.arrowRight(),
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        FlowRoutes.reviewList,
                      );
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
