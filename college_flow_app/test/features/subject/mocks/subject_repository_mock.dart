import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/subject/domain/entities/subject.dart';
import 'package:college_flow_app/features/subject/domain/repositories/subject_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';

import 'subject_entity_factory.dart';

class SubjectRepositoryMock extends Mock implements SubjectRepository {
  When _mockGetSubjectList() => when(getSubjects);

  //Get Subject List
  mockGetSubjectListSucess() => _mockGetSubjectList().thenAnswer(
        (_) async => Right<Failure, List<Subject>>(
          SubjectEntityFactory.buildList(),
        ),
      );
  mockGetSubjectListFail() => _mockGetSubjectList().thenAnswer(
        (_) async => const Left<Failure, List<Subject>>(
          UnhandledFailure(),
        ),
      );
}
