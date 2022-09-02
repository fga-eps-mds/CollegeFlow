import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_model.g.dart';

@JsonSerializable(createToJson: false)
class SubjectModel {
  final String name;
  final String subjectCode;
  // final int numReviews;
  // final double rating;

  SubjectModel({
    required this.name,
    required this.subjectCode,
    // required this.numReviews,
    // required this.rating,
  });

  factory SubjectModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectModelFromJson(json);
}
