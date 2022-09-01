import 'package:equatable/equatable.dart';

class Review extends Equatable {
  final int voteCounter;
  final String teacherName;
  final double score;
  final String title;
  final String? description;

  const Review({
    required this.voteCounter,
    required this.teacherName,
    required this.score,
    required this.title,
    this.description,
  });

  @override
  List get props => [
        voteCounter,
        teacherName,
        score,
        title,
        description,
      ];
}
