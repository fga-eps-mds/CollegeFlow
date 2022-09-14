import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_model.g.dart';

@JsonSerializable(createToJson: false)
class SubjectModel {
  final String name;
  final String code;
  final double rating;

  SubjectModel({
    required this.name,
    required this.code,
    required this.rating,
  });

  factory SubjectModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectModelFromJson(json);
}
