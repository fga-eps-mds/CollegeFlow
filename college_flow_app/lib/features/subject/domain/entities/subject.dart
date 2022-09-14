import 'package:equatable/equatable.dart';

class Subject extends Equatable {
  final String name;
  final String code;
  final double rating;

  const Subject({
    required this.name,
    required this.code,
    required this.rating,
  });

  @override
  List get props => [
        name,
        code,
        rating,
      ];
}
