import 'domain/entities/review.dart';

class Subject {
  final String name;
  final String code;

  Subject({
    required this.name,
    required this.code,
  });
}

final List<Subject> subjectList = List.generate(
  12,
  (index) => Subject(
    name: 'any_name $index',
    code: 'any_code $index',
  ),
);

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
