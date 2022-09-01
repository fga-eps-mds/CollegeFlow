import 'package:college_flow_app/features/review/data/models/review_model.dart';
import 'package:college_flow_app/features/review/domain/entities/review.dart';

abstract class ReviewMapper {
  static Review toEntity({required ReviewModel model}) {
    assert(
      model.teacherName.isNotEmpty,
      "Teacher name cannot be empty",
    );

    assert(
      model.title.isNotEmpty,
      "Title name cannot be empty",
    );

    assert(
      model.voteCounter > 0,
      "Vote counter shouldn't be lower than 0",
    );

    assert(
      model.score > 0,
      "Score shouldn't be lower than 0",
    );

    return Review(
      voteCounter: model.voteCounter,
      teacherName: model.teacherName,
      score: model.score,
      title: model.title,
      description: model.description,
    );
  }
}
