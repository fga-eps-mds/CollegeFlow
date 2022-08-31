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
  Future<List<SubjectModel>> getSubjectList() async {
    try {
      final result = await apiService.getReviewList();
      return result;
    } on DioError {
      throw const ServerException();
    } catch (e) {
      throw UnhandledException(
        message: e.toString(),
      );
    }
  }
}
