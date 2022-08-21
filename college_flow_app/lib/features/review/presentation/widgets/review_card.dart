import 'package:college_flow_app/config/design_system/data/object_styles/object_styles.dart';
import 'package:college_flow_app/features/review/list_example.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/flow_icon_button.dart';
import 'package:flutter/material.dart';

import '../../../../config/design_system/data/colors/colors.dart';
import '../../../../config/design_system/data/spacing/spacing.dart';

class ReviewCard extends StatefulWidget {
  const ReviewCard({
    Key? key,
    required this.review,
  }) : super(
          key: key,
        );
  final Review review;

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(spacingNano),
      decoration: BoxDecoration(
        border: Border.all(color: colorPrimary),
        borderRadius: BorderRadius.circular(
          objectStyleBorderRadiusDefault,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              FlowIconButton.inactive(
                icon: const FlowIcon.upVote(),
                onTap: () {},
              ),
              Text(
                '${widget.review.score}',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              FlowIconButton.inactive(
                icon: const FlowIcon.downVote(),
                onTap: () {},
              ),
            ],
          ),
          Column(
            children: [
              Text(
                widget.review.title,
                style: Theme.of(context).textTheme.labelLarge,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
