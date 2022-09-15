import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.g.dart';

@JsonSerializable(createToJson: true)
class ReviewModel {
  final double rating;
  final String professor;
  final String title;
  final String comment;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewModelToJson(this);

  ReviewModel({
    required this.rating,
    required this.professor,
    required this.title,
    required this.comment,
  });
}
