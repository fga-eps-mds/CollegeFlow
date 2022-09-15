import 'package:equatable/equatable.dart';

class Review extends Equatable {
  final String professor;
  final double score;
  final String title;
  final String description;

  const Review({
    required this.professor,
    required this.score,
    required this.title,
    required this.description,
  });

  @override
  List get props => [
        professor,
        score,
        title,
        description,
      ];
}
