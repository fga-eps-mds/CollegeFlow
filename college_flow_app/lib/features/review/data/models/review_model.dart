import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.g.dart';

@JsonSerializable(createToJson: false)
class ReviewModel {
  //TODO(Mauricio-Machado): Check what's the backend response
  final int voteCounter;
  final String teacherName;
  final double score;
  final String title;
  final String? description;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);

  ReviewModel({
    required this.voteCounter,
    required this.teacherName,
    required this.score,
    required this.title,
    this.description,
  });
}
