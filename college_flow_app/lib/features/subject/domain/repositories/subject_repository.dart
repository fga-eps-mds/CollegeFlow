import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/subject/domain/entities/subject.dart';
import 'package:dartz/dartz.dart';

abstract class SubjectRepository {
  Future<Either<Failure, List<Subject>>> getReviewList();
}
