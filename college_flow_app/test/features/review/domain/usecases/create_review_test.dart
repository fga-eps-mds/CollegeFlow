import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/domain/entities/review.dart';
import 'package:college_flow_app/features/review/domain/params/create_review_params.dart';
import 'package:college_flow_app/features/review/domain/usecases/create_review.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks/review_repository_mock.dart';

void main() {
  late final CreateReview sut;
  late final ReviewRepositoryMock repositoryMock;

  const mockParams = CreateReviewParams(
    code: 'any_code',
    review: Review(
      professor: 'any_professor',
      score: 0.0,
      title: 'any_title',
      description: 'any_description',
    ),
  );

  setUpAll(() {
    repositoryMock = ReviewRepositoryMock();
    sut = CreateReviewImpl(repository: repositoryMock);
    registerFallbackValue(mockParams);
  });

  group('FAILED', () {
    test('Should return failure when create review fails', () async {
      //arrange?
      const expectedResult = Some(UnhandledFailure());
      repositoryMock.mockCreateReviewFail();

      //* act
      final result = await sut.call(params: mockParams);

      //assert
      expect(result, expectedResult);
    });
  });
}
