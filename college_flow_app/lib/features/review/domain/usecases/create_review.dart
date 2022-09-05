import 'package:college_flow_app/core/failures.dart';
import 'package:college_flow_app/features/review/domain/params/create_review_params.dart';
import 'package:college_flow_app/features/review/domain/repositories/review_repository.dart';
import 'package:dartz/dartz.dart';

abstract class CreateReview {
  Future<Option<Failure>> call({
    required CreateReviewParams params,
  });
}

class CreateReviewImpl implements CreateReview {
  final ReviewRepository repository;

  CreateReviewImpl({required this.repository});

  @override
  Future<Option<Failure>> call({
    required CreateReviewParams params,
  }) async {
    return await repository.createReview(params: params);
  }
}
