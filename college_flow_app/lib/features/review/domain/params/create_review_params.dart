import 'package:college_flow_app/features/review/domain/entities/review.dart';
import 'package:equatable/equatable.dart';

class CreateReviewParams extends Equatable {
  final String code;
  final Review review;

  const CreateReviewParams({
    required this.code,
    required this.review,
  });

  @override
  List get props => [code, review];
}
