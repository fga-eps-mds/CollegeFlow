import 'package:college_flow_app/core/exceptions.dart';
import 'package:college_flow_app/features/subject/data/datasources/subject_datasource.dart';
import 'package:mocktail/mocktail.dart';

class SubjectDatasourceMock extends Mock implements SubjectDatasource {
  When _mockGetSubjects() => when(getSubjectList);

  //Get subjects
  void mockGetSubjectsFail() =>
      _mockGetSubjects().thenThrow(const ServerException());
}
