import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/subject/domain/entities/subject.dart';
import 'package:college_flow_app/features/subject/domain/usecase/get_subjects_list.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';

import 'subject_entity_factory.dart';

class GetSubjectsListMock extends Mock implements GetSubjectList {
  static const failure = UnhandledFailure();

  When _mockGetSubjectList() => when(call);

  // Get Subject List
  void mockFail() => _mockGetSubjectList().thenAnswer(
        (_) async => const Left<Failure, List<Subject>>(failure),
      );

  void mockSucess() => _mockGetSubjectList().thenAnswer(
        (_) async =>
            Right<Failure, List<Subject>>(SubjectEntityFactory.buildList()),
      );
}
