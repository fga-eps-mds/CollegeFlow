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
