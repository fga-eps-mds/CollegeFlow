import 'package:college_flow_app/features/review/domain/entities/review_response.dart';

import 'review_entity_factory.dart';

abstract class ReviewResponseFactory {
  static ReviewResponse build() {
    return ReviewResponse(
      reviews: ReviewEntityFactory.buildList(),
      rating: 0.0,
    );
  }
}
