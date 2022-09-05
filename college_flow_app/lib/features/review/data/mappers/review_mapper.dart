import 'package:college_flow_app/features/review/data/models/review_model.dart';
import 'package:college_flow_app/features/review/domain/entities/review.dart';

abstract class ReviewMapper {
  static Review toEntity({required ReviewModel model}) {
    assert(
      model.professor.isNotEmpty,
      "Teacher name cannot be empty",
    );

    assert(
      model.title.isNotEmpty,
      "Title name cannot be empty",
    );

    assert(
      model.rating >= 0,
      "Score shouldn't be lower than 0",
    );

    return Review(
      professor: model.professor,
      score: model.rating,
      title: model.title,
      description: model.comment,
    );
  }

  static ReviewModel fromEntity({required Review review}) {
    return ReviewModel(
      rating: review.score,
      professor: review.professor,
      title: review.title,
      comment: review.description,
    );
  }
}
