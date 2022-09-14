import 'package:college_flow_app/core/exceptions.dart';
import 'package:college_flow_app/features/review/data/datasources/review_datasource.dart';
import 'package:mocktail/mocktail.dart';

import 'get_review_response_model_factory.dart';

class ReviewDatasourceMock extends Mock implements ReviewDatasource {
  When _mockGetReviews() => when(
        () => getReviews(code: any(named: 'code')),
      );

  //Get Reviews
  void mockGetReviewsFail() => _mockGetReviews().thenThrow(
        const ServerException(),
      );

  void mockGetReviewsSucess() => _mockGetReviews().thenAnswer(
        (_) async => GetReviewResponseModelFactory.build(),
      );
}
