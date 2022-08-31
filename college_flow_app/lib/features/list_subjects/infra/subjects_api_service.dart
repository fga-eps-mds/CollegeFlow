import 'package:college_flow_app/features/list_subjects/data/models/subject_model.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'subjects_api_service.g.dart';

@RestApi()
abstract class SubjectAPIService {
  factory SubjectAPIService(
    Dio dio, {
    String baseUrl,
  }) = _SubjectAPIService;

  @GET("/subject")
  @Headers({
    'Content-type': 'application/json',
  })
  Future<List<SubjectModel>> getReviewList();
}
