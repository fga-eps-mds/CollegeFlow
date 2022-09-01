import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/domain/entities/review.dart';
import 'package:dartz/dartz.dart';

abstract class ReviewRepository {
  Future<Either<Failure, List<Review>>> getReviews();
}
