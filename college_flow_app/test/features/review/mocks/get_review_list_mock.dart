import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/domain/entities/review_response.dart';
import 'package:college_flow_app/features/review/domain/usecases/get_review_lists.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';

class GetReviewListMock extends Mock implements GetReviewList {
  When _mockGetReviews() => when(
        () => call(code: any(named: 'code')),
      );

  //Get Reviews
  void mockFail() => _mockGetReviews().thenAnswer(
        (_) async => const Left<Failure, ReviewResponse>(UnhandledFailure()),
      );
  void mockSuccess({
    required ReviewResponse reviewResponse,
  }) =>
      _mockGetReviews().thenAnswer(
        (_) async => Right<Failure, ReviewResponse>(reviewResponse),
      );
}
