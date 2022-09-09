import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/domain/entities/review_response.dart';
import 'package:college_flow_app/features/review/domain/params/create_review_params.dart';
import 'package:dartz/dartz.dart';

abstract class ReviewRepository {
  Future<Either<Failure, ReviewResponse>> getReviews({
    required String code,
  });

  Future<Option<Failure>> createReview({
    required CreateReviewParams params,
  });
}
