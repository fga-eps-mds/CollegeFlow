import 'package:collection/collection.dart';
import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/domain/entities/review.dart';
import 'package:college_flow_app/features/review/domain/usecases/get_review_lists.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/review_entity_factory.dart';
import '../../mocks/review_repository_mock.dart';

void main() {
  const String code = 'any_code';
  late final GetReviewListImpl sut;
  late final ReviewRepositoryMock repositoryMock;

  setUpAll(() {
    repositoryMock = ReviewRepositoryMock();
    sut = GetReviewListImpl(
      reviewRepository: repositoryMock,
    );
  });

  group('FAILED', () {
    test('Should return Unhandled Failure when repository fails', () async {
      //arrange?
      const expectedResult = Left<Failure, List<Review>>(UnhandledFailure());
      repositoryMock.mockGetReviewsFail();

      //* act
      final result = await sut.call(code: code);

      //assert
      expect(result, expectedResult);
    });
  });

  group('SUCESS', () {
    test(
      'Should return List of Reviews when repository succedes',
      () async {
        //arrange?
        Function listEquality = const ListEquality().equals;

        final expectedResult = ReviewEntityFactory.buildList();

        repositoryMock.mockGetReviewsSucess();

        //* act
        final result = await sut.call(code: code);

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
