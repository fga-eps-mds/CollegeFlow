import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/icons/sizes.dart';
import 'package:college_flow_app/config/design_system/data/object_styles/border_radius.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/features/review/list_example.dart';
import 'package:college_flow_app/features/review/presentation/widgets/review_card.dart';
import 'package:college_flow_app/shared/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/flow_icon_button.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

part './widgets/subject_card.dart';
part './widgets/review_score_tag.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final String _mockSubjectName = 'any_subject';
  final String _mockSubjectCode = 'any_code';
  final double _scoreAmount = 3.2;

  final Review _mockReview = Review(
    voteCounter: 25,
    teacherName: 'NOME PROFESSOR',
    score: 3.0,
    title: 'Lorem ipsum dolor sit amet, consectetu!',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod mi sollicitudin fringilla auctor. Phasellus sit amet gravida sem, vitae fermentum nulla. Suspendisse a leo vestibulum, tempus lacus quis, molestie urna.',
  );

  final List<Review> _mockReviewList = reviewList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorPrimary,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: spacingXXS,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FlowButton(
                  label: 'Criar avaliação',
                  suffixIcon: const FlowIcon.editComment(),
                  onTap: () {},
                ),
              ),
            ),
          ),
          Column(
            children: [
              SubjectCard(
                reviewScore: _scoreAmount,
                subjectCode: _mockSubjectCode,
                subjectName: _mockSubjectName,
              ),
              const VSpacer.xs(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: spacingXXS),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Avaliações',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    const Divider(
                      thickness: spacingQuarck,
                      color: colorSecondary,
                    ),
                    ReviewCard(review: _mockReview),
                    const VSpacer.xxs(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
