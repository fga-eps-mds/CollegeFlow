part of '../review_page.dart';

class ReviewScoreTag extends StatelessWidget {
  const ReviewScoreTag({
    Key? key,
    required this.reviewScore,
  }) : super(
          key: key,
        );

  final double reviewScore;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: spacingNano,
        vertical: spacingQuarck,
      ),
      decoration: BoxDecoration(
        color: colorSecondary,
        borderRadius: BorderRadius.circular(
          objectStyleBorderRadiusPill,
        ),
      ),
      child: Row(
        children: [
          Text(
            '$reviewScore',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontSize: 16,
                ),
          ),
          const HSpacer.atom(),
          const FlowIcon.star(
            size: iconSizeSM,
          ),
        ],
      ),
    );
  }
}
