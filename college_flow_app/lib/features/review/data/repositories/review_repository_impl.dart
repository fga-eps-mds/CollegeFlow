import 'package:college_flow_app/core/exceptions.dart';
import 'package:college_flow_app/features/review/data/datasources/review_datasource.dart';
import 'package:college_flow_app/features/review/data/mappers/review_mapper.dart';
import 'package:college_flow_app/features/review/domain/entities/review.dart';
import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/domain/params/create_review_params.dart';
import 'package:college_flow_app/features/review/domain/repositories/review_repository.dart';
import 'package:dartz/dartz.dart';

class ReviewRepositoryImpl implements ReviewRepository {
  final ReviewDatasource reviewDatasource;

  ReviewRepositoryImpl({required this.reviewDatasource});

  @override
  Future<Either<Failure, List<Review>>> getReviews({
    required String code,
  }) async {
    try {
      final model = await reviewDatasource.getReviews(
        code: code,
      );
      final result = model
          .map(
            (reviewModel) => ReviewMapper.toEntity(
              model: reviewModel,
            ),
          )
          .toList();
      return Right(result);
    } on FlowException catch (e) {
      return Left(e.toFailure());
    }
  }

  @override
  Future<Option<Failure>> createReview({
    required CreateReviewParams params,
  }) async {
    try {
      final reviewModel = ReviewMapper.fromEntity(review: params.review);

      await reviewDatasource.createReview(
        code: params.code,
        reviewModel: reviewModel,
      );

      return const None();
    } on FlowException catch (e) {
      return Some(e.toFailure());
    }
  }
}
