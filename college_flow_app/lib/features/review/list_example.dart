class Review {
  final int voteCounter;
  final String teacherName;
  final double score;
  final String title;
  final String description;

  Review({
    required this.voteCounter,
    required this.teacherName,
    required this.score,
    required this.title,
    required this.description,
  });
}

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
