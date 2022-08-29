import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class APIService {
  factory APIService(
    Dio dio, {
    String baseUrl,
  }) = _APIService;

  // Create method to get list of reviews on particular subject
}
