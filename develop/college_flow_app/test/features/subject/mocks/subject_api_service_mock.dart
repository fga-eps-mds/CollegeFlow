import 'package:college_flow_app/features/subject/infra/subjects_api_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dio/dio.dart';

import 'subject_model_factory.dart';

class SubjectAPIServiceMock extends Mock implements SubjectAPIService {
  final dioError = DioError(
    requestOptions: RequestOptions(path: '/subject'),
    response: Response(
      requestOptions: RequestOptions(path: '/subject'),
      statusCode: 500,
    ),
    error: 'any_error_message',
  );

  final error = Error();

  When _mockGetSubjects() => when(getSubjects);

  //Get subjects
  void mockFailDioError() => _mockGetSubjects().thenThrow(dioError);

  void mockFailGenericError() => _mockGetSubjects().thenThrow(error);

  void mockGetSubjectSuccess() => _mockGetSubjects().thenAnswer(
        (_) async => SubjectModelFactory.buildList(),
      );
}
