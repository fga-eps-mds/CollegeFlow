import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:college_flow_app/config/design_system/data/spacing/spacing.dart';
import 'package:college_flow_app/features/review/list_example.dart';
import 'package:college_flow_app/features/review/presentation/widgets/review_card.dart';
import 'package:college_flow_app/features/review/presentation/widgets/subject_card.dart';
import 'package:college_flow_app/shared/widgets/buttons/flow_button.dart';
import 'package:college_flow_app/shared/widgets/flow_icon.dart';
import 'package:college_flow_app/shared/widgets/gap.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final String _mockSubjectName = 'any_subject';
  final String _mockSubjectCode = 'any_code';
  final double _scoreMean = 3.2;

  final List<Review> _mockReviewList = reviewList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              const SliverAppBar(
                floating: true,
                snap: true,
                backgroundColor: colorPrimary,
                elevation: 0,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SubjectCard(
                      reviewScore: _scoreMean,
                      subjectCode: _mockSubjectCode,
                      subjectName: _mockSubjectName,
                    ),
                    const VSpacer.xs(),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: spacingXXS),
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
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: _mockReviewList.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  ReviewCard(
                                    review: _mockReviewList[index],
                                  ),
                                  const VSpacer.xxxs(),
                                ],
                              );
                            },
                          ),
                          const VSpacer.sm(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
                  //TODO(Mauricio-Machado): Navigate to Review Form
                  onTap: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
