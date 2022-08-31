import 'package:college_flow_app/features/subject/data/models/subject_model.dart';

abstract class SubjectDatasource {
  Future<List<SubjectModel>> getSubjectList();
}
