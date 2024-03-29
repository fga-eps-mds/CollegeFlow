import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/domain/entities/review_response.dart';
import 'package:college_flow_app/features/review/domain/repositories/review_repository.dart';
import 'package:dartz/dartz.dart';

abstract class GetReviewList {
  Future<Either<Failure, ReviewResponse>> call({
    required String code,
  });
}

class GetReviewListImpl implements GetReviewList {
  final ReviewRepository reviewRepository;

  GetReviewListImpl({required this.reviewRepository});

  @override
  Future<Either<Failure, ReviewResponse>> call({
    required String code,
  }) async {
    return await reviewRepository.getReviews(code: code);
  }
}
