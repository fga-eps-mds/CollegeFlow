// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => ReviewModel(
      voteCounter: json['voteCounter'] as int,
      teacherName: json['teacherName'] as String,
      score: (json['score'] as num).toDouble(),
      title: json['title'] as String,
      description: json['description'] as String?,
    );
