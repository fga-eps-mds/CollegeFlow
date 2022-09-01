import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/domain/repositories/review_repository.dart';
import 'package:dartz/dartz.dart';

import '../entities/review.dart';

abstract class GetReviewList {
  Future<Either<Failure, List<Review>>> call();
}

class GetReviewListImpl implements GetReviewList {
  final ReviewRepository reviewRepository;

  GetReviewListImpl({required this.reviewRepository});

  @override
  Future<Either<Failure, List<Review>>> call() async {
    return await reviewRepository.getReviews();
  }
}
