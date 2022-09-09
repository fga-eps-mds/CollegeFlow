import 'package:college_flow_app/features/review/infra/review_api_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dio/dio.dart';

import 'get_review_response_model_factory.dart';

class ReviewAPIServiceMock extends Mock implements ReviewAPIService {
  final dioError = DioError(
    requestOptions: RequestOptions(path: '/subject'),
    response: Response(
      requestOptions: RequestOptions(path: '/subject'),
      statusCode: 500,
    ),
    error: 'any_error_message',
  );

  final error = Error();

  When _mockGetReviews() => when(
        () => getReviews(code: any(named: 'code')),
      );

  //Get Reviews
  void mockDioFail() => _mockGetReviews().thenThrow(dioError);

  void mockGeneralFail() => _mockGetReviews().thenThrow(error);

  void mockSucess() => _mockGetReviews().thenAnswer(
        (_) async => GetReviewResponseModelFactory.build(),
      );
}
