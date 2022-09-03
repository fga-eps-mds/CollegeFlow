import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/domain/entities/review.dart';
import 'package:college_flow_app/features/review/domain/repositories/review_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';

import 'review_entity_factory.dart';

class ReviewRepositoryMock extends Mock implements ReviewRepository {
  static const failure = UnhandledFailure();

  When _mockGetReviews() => when(
        () {
          getReviews(code: any(named: 'code'));
        },
      );

  //Get Reviews
  void mockGetReviewsSucess() => _mockGetReviews().thenAnswer(
        (_) async =>
            Right<Failure, List<Review>>(ReviewEntityFactory.buildList()),
      );
  void mockGetReviewsFail() => _mockGetReviews().thenAnswer(
        (_) async => const Left<Failure, List<Review>>(failure),
      );
}
