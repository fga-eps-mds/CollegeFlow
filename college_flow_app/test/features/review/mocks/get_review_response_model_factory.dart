import 'package:college_flow_app/features/review/data/models/get_review_response_model.dart';

import 'review_model_factory.dart';

class GetReviewResponseFactory {
  static GetReviewResponseModel build() {
    return GetReviewResponseModel(
      reviews: ReviewModelFactory.buildList(),
    );
  }
}
