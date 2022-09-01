import 'package:college_flow_app/core/error_logger.dart';
import 'package:college_flow_app/core/exceptions.dart';
import 'package:college_flow_app/features/subject/data/datasources/subject_datasource.dart';
import 'package:college_flow_app/features/subject/data/mappers/subject_mapper.dart';
import 'package:college_flow_app/features/subject/domain/entities/subject.dart';
import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/subject/domain/repositories/subject_repository.dart';
import 'package:dartz/dartz.dart';

class SubjectRepositoryImpl implements SubjectRepository {
  final SubjectDatasource subjectDatasource;

  SubjectRepositoryImpl({
    required this.subjectDatasource,
  });

  @override
  Future<Either<Failure, List<Subject>>> getSubjects() async {
    try {
      final model = await subjectDatasource.getSubjects();
      final result = model
          .map(
            (subjectModel) => SubjectMapper.toEntity(
              model: subjectModel,
            ),
          )
          .toList();
      return Right(result);
    } on FlowException catch (e) {
      FlowLogger.showError('SubjectRepositoryImpl', 'getReviewList', e);
      return Left(e.toFailure());
    }
  }
}
