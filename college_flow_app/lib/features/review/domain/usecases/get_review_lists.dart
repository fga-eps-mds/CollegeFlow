import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/list_example.dart';
import 'package:dartz/dartz.dart';

import '../entities/review.dart';

abstract class GetReviewList {
  Future<Either<Failure, List<Review>>> call();
}

class GetReviewListImpl implements GetReviewList {
  @override
  Future<Either<Failure, List<Review>>> call() async {
    //TODO(Mauricio-Machado): Implement usecase call
    return Right(reviewList);
  }
}
