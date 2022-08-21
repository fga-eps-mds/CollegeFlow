part of '../review_page.dart';

class SubjectCard extends StatelessWidget {
  const SubjectCard({
    Key? key,
    required this.reviewScore,
    required this.subjectCode,
    required this.subjectName,
  }) : super(
          key: key,
        );

  final String subjectName;
  final String subjectCode;
  final double reviewScore;

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
              subjectName,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: colorWhite,
                  ),
            ),
          ),
          const VSpacer.quarck(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subjectCode,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: colorWhite,
                    ),
              ),
              ReviewScoreTag(
                reviewScore: reviewScore,
              ),
            ],
          ),
          const VSpacer.xxxs(),
        ],
      ),
    );
  }
}
