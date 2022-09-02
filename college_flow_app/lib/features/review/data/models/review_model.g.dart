// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => ReviewModel(
      rating: (json['rating'] as num).toDouble(),
      professor: json['professor'] as String,
      title: json['title'] as String,
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$ReviewModelToJson(ReviewModel instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'professor': instance.professor,
      'title': instance.title,
      'comment': instance.comment,
    };
