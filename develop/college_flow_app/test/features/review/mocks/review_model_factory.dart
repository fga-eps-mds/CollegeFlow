import 'package:college_flow_app/features/review/data/models/review_model.dart';

class ReviewModelFactory {
  static ReviewModel build() {
    return ReviewModel(
      rating: 0.0,
      professor: 'any_professor',
      title: 'any_title',
      comment: 'any_description',
    );
  }

  static List<ReviewModel> buildList() {
    return <ReviewModel>[
      build(),
      build(),
    ];
  }
}
