import 'package:college_flow_app/features/review/data/models/get_review_response_model.dart';

import 'review_model_factory.dart';

class GetReviewResponseModelFactory {
  static GetReviewResponseModel build() {
    return GetReviewResponseModel(
      rating: 0.0,
      reviews: ReviewModelFactory.buildList(),
    );
  }
}
