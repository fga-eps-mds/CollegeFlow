import 'package:college_flow_app/core/failures.dart';
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

//TODO(Mauricio-Machado): Remove when implemented usecase
final List<Review> reviewList = List.generate(
  12,
  (index) => Review(
    voteCounter: 25,
    teacherName: 'NOME PROFESSOR $index',
    score: 3.0,
    title: 'Lorem ipsum dolor sit amet, consectetu!',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod mi sollicitudin fringilla auctor. Phasellus sit amet gravida sem, vitae fermentum nulla. Suspendisse a leo vestibulum, tempus lacus quis, molestie urna.',
  ),
);
