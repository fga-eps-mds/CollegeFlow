import 'package:college_flow_app/features/review/data/models/get_review_response_model.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'review_api_service.g.dart';

@RestApi()
abstract class ReviewAPIService {
  factory ReviewAPIService(
    Dio dio, {
    String baseUrl,
  }) = _ReviewAPIService;

  @GET("/subject/{code}")
  @Headers({'Content-type': 'application/json'})
  //TODO(Mauricio-Machado): When backend update change to
  // GetReviewResponseModel without list
  Future<List<GetReviewResponseModel>> getReviews({
    @Path("code") required String code,
  });
}
