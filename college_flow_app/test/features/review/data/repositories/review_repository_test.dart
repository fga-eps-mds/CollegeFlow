import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/data/repositories/review_repository_impl.dart';
import 'package:college_flow_app/features/review/domain/entities/review_response.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/review_datasource_mock.dart';
import '../../mocks/review_response_factory.dart';

void main() {
  const String code = 'any_code';
  late final ReviewRepositoryImpl sut;
  late final ReviewDatasourceMock datasourceMock;

  setUpAll(
    () {
      datasourceMock = ReviewDatasourceMock();
      sut = ReviewRepositoryImpl(
        reviewDatasource: datasourceMock,
      );
    },
  );

  group('FAILED', () {
    test('Should return Server Failure when datasource fails', () async {
      //arrange?
      const expectedResult = Left<Failure, ReviewResponse>(
        ServerFailure(),
      );
      datasourceMock.mockGetReviewsFail();

      //* act
      final result = await sut.getReviews(code: code);

      //assert
      expect(result, expectedResult);
    });
  });

  group('SUCESS', () {
    test('Should return List of reviews when datasource succedes', () async {
      //arrange?
      final expectedResult =
          Right<Failure, ReviewResponse>(ReviewResponseFactory.build());

      datasourceMock.mockGetReviewsSucess();

      //* act
      final result = await sut.getReviews(code: code);

      //assert
      expect(result, expectedResult);
    });
  });
}
