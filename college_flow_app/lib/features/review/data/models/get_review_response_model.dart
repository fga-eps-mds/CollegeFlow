import 'package:college_flow_app/features/review/data/models/review_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_review_response_model.g.dart';

@JsonSerializable(createToJson: false)
class GetReviewResponseModel {
  final double rating;
  final List<ReviewModel> reviews;

  factory GetReviewResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetReviewResponseModelFromJson(json);

  GetReviewResponseModel({
    required this.reviews,
    required this.rating,
  });
}
