import 'domain/entities/review.dart';

final List<Review> reviewList = List.generate(
  12,
  (_) => Review(
    voteCounter: 25,
    teacherName: 'NOME PROFESSOR',
    score: 3.0,
    title: 'Lorem ipsum dolor sit amet, consectetu!',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam euismod mi sollicitudin fringilla auctor. Phasellus sit amet gravida sem, vitae fermentum nulla. Suspendisse a leo vestibulum, tempus lacus quis, molestie urna.',
  ),
);
