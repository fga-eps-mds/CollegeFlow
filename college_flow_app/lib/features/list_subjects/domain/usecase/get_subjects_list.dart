import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/list_subjects/domain/entities/subject.dart';
import 'package:dartz/dartz.dart';

abstract class GetSubjectList {
  Future<Either<Failure, List<Subject>>> call();
}

class GetSubjectListImpl implements GetSubjectList {
  @override
  Future<Either<Failure, List<Subject>>> call() async {
    return Right(subjectList);
  }
}

//TODO(Mauricio-Machado): Remove mock for subjectList
final List<Subject> subjectList = List.generate(
  12,
  (index) => Subject(
    name: 'any_name $index',
    code: 'any_code $index',
  ),
);
