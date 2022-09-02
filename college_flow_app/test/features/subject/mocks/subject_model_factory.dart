import 'package:college_flow_app/features/subject/data/models/subject_model.dart';

class SubjectModelFactory {
  static SubjectModel build() {
    return SubjectModel(
      name: 'any_name',
      subjectCode: 'any_code',
    );
  }

  static List<SubjectModel> buildList() {
    return <SubjectModel>[
      build(),
      build(),
    ];
  }
}
