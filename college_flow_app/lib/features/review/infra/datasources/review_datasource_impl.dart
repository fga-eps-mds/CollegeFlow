import 'package:college_flow_app/core/error_logger.dart';
import 'package:college_flow_app/core/exceptions.dart';
import 'package:college_flow_app/features/review/data/datasources/review_datasource.dart';
import 'package:college_flow_app/features/review/data/models/get_review_response_model.dart';
import 'package:college_flow_app/features/review/data/models/review_model.dart';
import 'package:college_flow_app/features/review/infra/review_api_service.dart';
import 'package:dio/dio.dart';

class ReviewDatasourceImpl implements ReviewDatasource {
  final ReviewAPIService apiService;

  ReviewDatasourceImpl({required this.apiService});

  @override
  Future<GetReviewResponseModel> getReviews({
    required String code,
  }) async {
    try {
      final result = await apiService.getReviews(
        code: code,
      );
      return result;
    } on DioError catch (e) {
      FlowLogger.showError('ReviewDatasourceImpl - DioError', 'getReviews', e);
      throw ServerException(
        code: e.response?.statusCode,
        extraData: e.response?.data,
        message: e.message,
      );
    } catch (e) {
      FlowLogger.showError(
          'ReviewDatasourceImpl - General Error', 'getReviews', e);
      throw const UnhandledException();
    }
  }

  @override
  Future<void> createReview({
    required String code,
    required ReviewModel reviewModel,
  }) async {
    try {
      await apiService.postReview(
        code: code,
        review: reviewModel,
      );
    } on DioError catch (e) {
      FlowLogger.showError(
          'ReviewDatasourceImpl - DioError', 'createReview', e);
      throw ServerException(
        code: e.response?.statusCode,
        message: e.message,
      );
    } catch (e) {
      FlowLogger.showError(
          'ReviewDatasourceImpl - General Error', 'createReview', e);
      throw const UnhandledException();
    }
  }
}
