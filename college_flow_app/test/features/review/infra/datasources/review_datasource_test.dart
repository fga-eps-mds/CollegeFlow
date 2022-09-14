import 'package:collection/collection.dart';
import 'package:college_flow_app/core/exceptions.dart';
import 'package:college_flow_app/features/review/infra/datasources/review_datasource_impl.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/get_review_response_model_factory.dart';
import '../../mocks/review_api_service_mock.dart';

void main() {
  late final ReviewDatasourceImpl sut;
  late final ReviewAPIServiceMock api;
  const serverException = ServerException(
    code: 500,
    message: 'any_error_message',
  );
  const unhandledException = UnhandledException();
  const code = 'any_code';

  setUpAll(
    () {
      api = ReviewAPIServiceMock();
      sut = ReviewDatasourceImpl(
        apiService: api,
      );
    },
  );

  group('FAILED', () {
    test(
      'Should throw ServerException when making request',
      () async {
        //arrange?
        const expectedResult = serverException;
        api.mockDioFail();

        //assert
        expect(
          () async => await sut.getReviews(code: code),
          throwsA(expectedResult),
        );
      },
    );

    test(
      'Should throw UnhandledException when making request',
      () async {
        //arrange?
        const expectedResult = unhandledException;
        api.mockGeneralFail();

        //assert
        expect(
          () async => await sut.getReviews(code: code),
          throwsA(expectedResult),
        );
      },
    );
  });

  group('SUCESS', () {
    test('Should return list of review model when request succedes', () async {
      //arrange?
      Function listEquality = const ListEquality().equals;
      final expectedResult = GetReviewResponseModelFactory.build();
      api.mockSucess();

      //* act
      final result = await sut.getReviews(code: code);

      //assert
      expect(result.rating, expectedResult.rating);
      result.reviews.map(
        (subjects) =>
            expect(listEquality(subjects, expectedResult.reviews), true),
      );
    });
  });
}
