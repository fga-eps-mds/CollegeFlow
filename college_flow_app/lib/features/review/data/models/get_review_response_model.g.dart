// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_review_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetReviewResponseModel _$GetReviewResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetReviewResponseModel(
      rating: (json['rating'] as num).toDouble(),
      code: json['code'] as String,
      name: json['name'] as String,
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
