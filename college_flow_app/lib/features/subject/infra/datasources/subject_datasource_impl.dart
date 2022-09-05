import 'package:college_flow_app/core/error_logger.dart';
import 'package:college_flow_app/core/exceptions.dart';
import 'package:college_flow_app/features/subject/data/datasources/subject_datasource.dart';
import 'package:college_flow_app/features/subject/data/models/subject_model.dart';
import 'package:college_flow_app/features/subject/infra/subjects_api_service.dart';
import 'package:dio/dio.dart';

class SubjectDatasourceImpl implements SubjectDatasource {
  final SubjectAPIService apiService;

  SubjectDatasourceImpl({
    required this.apiService,
  });

  @override
  Future<List<SubjectModel>> getSubjects() async {
    try {
      final result = await apiService.getSubjects();
      return result;
    } on DioError catch (e) {
      FlowLogger.showError(
          'SubjectDatasourceImpl - DioError', 'getSubjects', e);
      throw ServerException(
        code: e.response?.statusCode,
        extraData: e.response?.data,
        message: e.message,
      );
    } catch (e) {
      FlowLogger.showError(
          'SubjectDatasourceImpl - General Error', 'getSubjects', e);
      throw const UnhandledException();
    }
  }
}
