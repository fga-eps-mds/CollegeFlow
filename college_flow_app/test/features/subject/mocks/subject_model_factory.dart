import 'package:college_flow_app/features/subject/data/models/subject_model.dart';

class SubjectModelFactory {
  static SubjectModel build() {
    return SubjectModel(
      name: 'any_name',
      code: 'any_code',
      rating: 0.0,
    );
  }

  static List<SubjectModel> buildList() {
    return <SubjectModel>[
      build(),
      build(),
    ];
  }
}
