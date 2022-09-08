import 'package:college_flow_app/features/review/domain/entities/review.dart';
import 'package:equatable/equatable.dart';

class ReviewResponse extends Equatable {
  final List<Review> reviews;
  final double rating;

  const ReviewResponse({
    required this.reviews,
    required this.rating,
  });

  @override
  List get props => [
        reviews,
        rating,
      ];
}
