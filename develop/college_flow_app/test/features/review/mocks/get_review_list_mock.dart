import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/domain/entities/review.dart';
import 'package:college_flow_app/features/review/domain/usecases/get_review_lists.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';

class GetReviewListMock extends Mock implements GetReviewList {
  When _mockGetReviews() => when(
        () => call(code: any(named: 'code')),
      );

  //Get Reviews
  void mockFail() => _mockGetReviews().thenAnswer(
        (_) async => const Left<Failure, List<Review>>(UnhandledFailure()),
      );
  void mockSuccess({
    required List<Review> reviewList,
  }) =>
      _mockGetReviews().thenAnswer(
        (_) async => Right<Failure, List<Review>>(reviewList),
      );
}
