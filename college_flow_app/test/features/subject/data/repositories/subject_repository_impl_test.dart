import 'package:collection/collection.dart';
import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/subject/data/repositories/subject_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/subject_datasource_mock.dart';
import '../../mocks/subject_entity_factory.dart';

void main() {
  late final SubjectRepositoryImpl sut;
  late final SubjectDatasourceMock datasourceMock;

  setUpAll(() {
    datasourceMock = SubjectDatasourceMock();
    sut = SubjectRepositoryImpl(
      subjectDatasource: datasourceMock,
    );
  });

  group('FAILED', () {
    test(
      'When get subject list throws exception, repository should return corresponding failure',
      () async {
        //arrange?
        const expectedResult = Left(ServerFailure());
        datasourceMock.mockGetSubjectsFail();

        //* act
        final result = await sut.getSubjects();

        //assert
        expect(result, expectedResult);
      },
    );
  });

  group('SUCESS', () {
    test(
      'should return List of subjects models when requests succedes',
      () async {
        //arrange?
        Function listEquality = const ListEquality().equals;
        final expectedResult = SubjectEntityFactory.buildList();
        datasourceMock.mockGetSubjectsSuccess();

        //* act
        final result = await sut.getSubjects();

        //assert
        expect(result.isRight(), true);
        result.map(
          (subjects) {
            expect(listEquality(subjects, expectedResult), true);
          },
        );
      },
    );
  });
}
