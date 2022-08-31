import 'package:equatable/equatable.dart';

class Subject extends Equatable {
  final String name;
  final String code;

  const Subject({
    required this.name,
    required this.code,
  });

  @override
  List get props => [
        name,
        code,
      ];
}
