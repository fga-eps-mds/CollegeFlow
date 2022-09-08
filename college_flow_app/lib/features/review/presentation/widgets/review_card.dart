import 'package:college_flow_app/config/design_system/data/object_styles/object_styles.dart';
import 'package:college_flow_app/features/review/presentation/widgets/review_score_tag.dart';
import 'package:college_flow_app/features/review/presentation/widgets/teacher_tag.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

import '../../../../config/design_system/data/colors/colors.dart';
import '../../../../config/design_system/data/spacing/spacing.dart';
import '../../domain/entities/review.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.review.title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const VSpacer.quarck(),
          Text(
            widget.review.description,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const VSpacer.nano(),
          Row(
            children: [
              ReviewScoreTag(
                reviewScore: widget.review.score,
              ),
              const HSpacer.nano(),
              Expanded(
                child: TeacherTag(
                  teacherName: widget.review.professor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
