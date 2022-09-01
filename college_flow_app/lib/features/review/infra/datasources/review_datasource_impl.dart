import 'package:college_flow_app/core/error_logger.dart';
import 'package:college_flow_app/core/exceptions.dart';
import 'package:college_flow_app/features/review/data/datasources/review_datasource.dart';
import 'package:college_flow_app/features/review/data/models/review_model.dart';
import 'package:dio/dio.dart';

class ReviewDatasourceImpl implements ReviewDatasource {
  //TODO(Mauricio-Machado): Remove when implemented api service request
  final List<ReviewModel> reviewList = List.generate(
    12,
    (index) => ReviewModel(
      voteCounter: 25,
      teacherName: 'NOME PROFESSOR $index',
      score: 3.0,
      title: 'Lorem ipsum dolor sit amet, consectetu!',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod mi sollicitudin fringilla auctor. Phasellus sit amet gravida sem, vitae fermentum nulla. Suspendisse a leo vestibulum, tempus lacus quis, molestie urna.',
    ),
  );

  @override
  Future<List<ReviewModel>> getReviews() async {
    try {
      // final result = await apiService.getSubjects();
      final result = reviewList;
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
}
