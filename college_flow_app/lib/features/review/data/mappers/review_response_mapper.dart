import 'package:college_flow_app/features/review/data/mappers/review_mapper.dart';
import 'package:college_flow_app/features/review/data/models/get_review_response_model.dart';
import 'package:college_flow_app/features/review/domain/entities/review_response.dart';

abstract class ReviewResponseMapper {
  static ReviewResponse toEntity({required GetReviewResponseModel model}) {
    assert(
      model.rating >= 0,
      "Score shouldn't be lower than 0",
    );

    return ReviewResponse(
      reviews: model.reviews
          .map(
            (review) => ReviewMapper.toEntity(model: review),
          )
          .toList(),
      rating: model.rating,
    );
  }
}
