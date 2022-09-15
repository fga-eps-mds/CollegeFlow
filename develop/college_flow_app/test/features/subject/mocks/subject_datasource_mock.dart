import 'package:college_flow_app/core/exceptions.dart';
import 'package:college_flow_app/features/subject/data/datasources/subject_datasource.dart';
import 'package:mocktail/mocktail.dart';

import 'subject_model_factory.dart';

class SubjectDatasourceMock extends Mock implements SubjectDatasource {
  When _mockGetSubjects() => when(getSubjects);

  //Get subjects
  void mockGetSubjectsFail() => _mockGetSubjects().thenThrow(
        const ServerException(),
      );

  void mockGetSubjectsSuccess() => _mockGetSubjects().thenAnswer(
        (_) async => (SubjectModelFactory.buildList()),
      );
}
