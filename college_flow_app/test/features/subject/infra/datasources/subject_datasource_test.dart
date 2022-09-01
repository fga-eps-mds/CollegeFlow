import 'package:collection/collection.dart';
import 'package:college_flow_app/core/exceptions.dart';
import 'package:college_flow_app/features/subject/infra/datasources/subject_datasource_impl.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/subject_api_service_mock.dart';
import '../../mocks/subject_model_factory.dart';

void main() {
  late final SubjectAPIServiceMock api;
  late final SubjectDatasourceImpl sut;
  const serverException = ServerException(
    code: 500,
    message: 'any_error_message',
  );
  const unhandledException = UnhandledException();

  setUpAll(() {
    api = SubjectAPIServiceMock();
    sut = SubjectDatasourceImpl(apiService: api);
  });

  group('FAILED', () {
    test(
      'Should throw ServerException when making request',
      () async {
        //arrange?
        const expectedResult = serverException;
        api.mockFailDioError();

        //assert
        expect(
          () async => await sut.getSubjects(),
          throwsA(expectedResult),
        );
      },
    );

    test(
      'Should throw UnhandledException when making request',
      () async {
        //arrange?
        const expectedResult = unhandledException;
        api.mockFailGenericError();

        //assert
        expect(
          () async => await sut.getSubjects(),
          throwsA(expectedResult),
        );
      },
    );
  });

  group('SUCESS', () {
    test('Should return list of subjects model when request succedes',
        () async {
      //arrange?
      Function listEquality = const ListEquality().equals;
      final expectedResult = SubjectModelFactory.buildList();
      api.mockGetSubjectSuccess();

      //* act
      final result = await sut.getSubjects();

      //assert
      result.map(
        (subjects) => expect(listEquality(subjects, expectedResult), true),
      );
    });
  });
}
