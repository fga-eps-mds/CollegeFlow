import 'package:collection/collection.dart';
import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/data/models/review_model.dart';
import 'package:college_flow_app/features/review/data/repositories/review_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/review_datasource_mock.dart';
import '../../mocks/review_entity_factory.dart';

void main() {
  const String code = 'any_code';
  late ReviewRepositoryImpl sut;
  late ReviewDatasourceMock datasourceMock;

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
      const expectedResult = Left<Failure, List<ReviewModel>>(
        ServerFailure(),
      );
      datasourceMock.mockFail();

      //* act
      final result = await sut.getReviews(code: code);

      //assert
      expect(result, expectedResult);
    });
  });

  group('SUCESS', () {
    test('Should return List of reviews when datasource succedes', () async {
      //arrange?
      Function listEquality = const ListEquality().equals;
      final expectedResult = ReviewEntityFactory.buildList();

      datasourceMock.mockSucess();

      //* act
      final result = await sut.getReviews(code: code);

      //assert
      expect(result.isRight(), true);
      result.map(
        (subjects) {
          expect(listEquality(subjects, expectedResult), true);
        },
      );
    });
  });
}
