import 'package:collection/collection.dart';
import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/subject/domain/usecase/get_subjects_list.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/subject_entity_factory.dart';
import '../../mocks/subject_repository_mock.dart';

void main() {
  late final GetSubjectListImpl sut;
  late final SubjectRepositoryMock repositoryMock;

  setUpAll(() {
    repositoryMock = SubjectRepositoryMock();
    sut = GetSubjectListImpl(
      subjectRepository: repositoryMock,
    );
  });

  group('FAILED', () {
    test(
      'Should return Unhandled Failure when request fails',
      () async {
        //arrange?
        const expectedResult = Left(UnhandledFailure());
        repositoryMock.mockGetSubjectListFail();

        //* act
        final result = await sut.call();

        //assert
        expect(result, expectedResult);
      },
    );
  });

  group('SUCESS', () {
    test(
      'Should return list of subjects when request succedes',
      () async {
        //arrange?
        Function listEquality = const ListEquality().equals;
        final expectedResult = SubjectEntityFactory.buildList();
        repositoryMock.mockGetSubjectListSucess();

        //* act
        final result = await sut.call();

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
