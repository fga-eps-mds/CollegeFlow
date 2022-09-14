import 'package:college_flow_app/features/review/domain/entities/review.dart';

class ReviewEntityFactory {
  static Review build() {
    return const Review(
      professor: 'any_professor',
      score: 0.0,
      title: 'any_title',
      description: 'any_description',
    );
  }

  static List<Review> buildList() {
    return <Review>[
      build(),
      build(),
    ];
  }
}
