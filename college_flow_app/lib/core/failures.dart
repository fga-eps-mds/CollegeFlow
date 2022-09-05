import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final int? code;
  final String? title;
  final String? message;
  final Map<String, dynamic>? extraData;

  const Failure({
    this.code,
    this.title,
    this.message,
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
    super.code,
    super.title,
    super.message,
    super.extraData,
  });
}

class ServerFailure extends Failure {
  const ServerFailure({
    super.code,
    super.title,
    super.message,
    super.extraData,
  });
}
