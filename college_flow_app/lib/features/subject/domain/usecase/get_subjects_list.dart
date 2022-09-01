import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/subject/domain/entities/subject.dart';
import 'package:college_flow_app/features/subject/domain/repositories/subject_repository.dart';
import 'package:dartz/dartz.dart';

abstract class GetSubjectList {
  Future<Either<Failure, List<Subject>>> call();
}

class GetSubjectListImpl implements GetSubjectList {
  final SubjectRepository subjectRepository;

  GetSubjectListImpl({required this.subjectRepository});

  @override
  Future<Either<Failure, List<Subject>>> call() async {
    return await subjectRepository.getReviewList();
  }
}
