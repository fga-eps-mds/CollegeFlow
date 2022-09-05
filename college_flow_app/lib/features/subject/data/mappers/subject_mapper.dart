import 'package:college_flow_app/features/subject/data/models/subject_model.dart';
import 'package:college_flow_app/features/subject/domain/entities/subject.dart';

abstract class SubjectMapper {
  static Subject toEntity({required SubjectModel model}) {
    assert(
      model.name.isNotEmpty,
      "Subject's name cannot be empty",
    );
    assert(
      model.code.isNotEmpty,
      "Subject's code cannot be empty",
    );
    assert(
      model.rating >= 0,
      "Subject's rating cannot be smaller than 0",
    );

    return Subject(
      name: model.name,
      code: model.code,
      rating: model.rating,
    );
  }
}
