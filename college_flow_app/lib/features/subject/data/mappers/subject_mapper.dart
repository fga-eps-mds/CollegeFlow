import 'package:college_flow_app/features/subject/data/models/subject_model.dart';
import 'package:college_flow_app/features/subject/domain/entities/subject.dart';

abstract class SubjectMapper {
  static Subject toEntity({required SubjectModel model}) {
    assert(
      model.name.isNotEmpty,
      "Subject's name cannot be empty",
    );
    assert(
      model.subjectCode.isNotEmpty,
      "Subject's code cannot be empty",
    );
    return Subject(
      name: model.name,
      code: model.subjectCode,
    );
  }
}
