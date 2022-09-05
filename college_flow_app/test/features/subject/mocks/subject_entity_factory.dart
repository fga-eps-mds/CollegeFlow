import 'package:college_flow_app/features/subject/domain/entities/subject.dart';

class SubjectEntityFactory {
  static Subject build() {
    return const Subject(
      name: 'any_name',
      code: 'any_code',
      rating: 0.0,
    );
  }

  static List<Subject> buildList() {
    return <Subject>[
      build(),
      build(),
    ];
  }
}
