import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final int? code;
  final String? title;
  final String? message;
  final Map<String, dynamic>? extraData;

  const Failure({
    required this.code,
    required this.title,
    required this.message,
    this.extraData,
  });

  @override
  List get props => [
        code,
        title,
        message,
        extraData,
      ];
}

class UnhandledFailure extends Failure {
  const UnhandledFailure({
    required super.code,
    required super.title,
    required super.message,
    super.extraData,
  });
}
