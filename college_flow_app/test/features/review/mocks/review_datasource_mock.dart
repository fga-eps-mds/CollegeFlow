import 'package:college_flow_app/core/exceptions.dart';
import 'package:college_flow_app/features/review/data/datasources/review_datasource.dart';
import 'package:mocktail/mocktail.dart';

import 'review_model_factory.dart';

class ReviewDatasourceMock extends Mock implements ReviewDatasource {
  When _mockGetReviews() => when(
        () => getReviews(code: any(named: 'code')),
      );

  //Get Reviews
  void mockFail() => _mockGetReviews().thenThrow(
        const ServerException(),
      );

  void mockSucess() => _mockGetReviews().thenAnswer(
        (_) async => ReviewModelFactory.buildList(),
      );
}
