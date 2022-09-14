import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/domain/entities/review_response.dart';
import 'package:college_flow_app/features/review/domain/repositories/review_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';

import 'review_response_factory.dart';

class ReviewRepositoryMock extends Mock implements ReviewRepository {
  static const failure = UnhandledFailure();

  When _mockGetReviews() => when(
        () {
          getReviews(code: any(named: 'code'));
        },
      );

  When _mockCreateReview() => when(
        () => createReview(
          params: any(named: 'params'),
        ),
      );

  //Get Reviews
  void mockGetReviewsSucess() => _mockGetReviews().thenAnswer(
        (_) async =>
            Right<Failure, ReviewResponse>(ReviewResponseFactory.build()),
      );

  void mockGetReviewsFail() => _mockGetReviews().thenAnswer(
        (_) async => const Left<Failure, ReviewResponse>(failure),
      );

  //Create review
  void mockCreateReviewSucess() =>
      _mockCreateReview().thenAnswer((_) async => const None());

  void mockCreateReviewFail() => _mockCreateReview().thenAnswer(
        (_) async => const Some(UnhandledFailure()),
      );
}
