import 'package:equatable/equatable.dart';

import 'failures.dart';

abstract class FlowException extends Equatable implements Exception {
  final int? code;
  final String? title;
  final String? message;
  final Map<String, dynamic>? extraData;

  const FlowException({
    this.code,
    this.title,
    this.message,
    this.extraData,
  });

  @override
  String toString() {
    return '[$runtimeType]: code: $code;\ntitle: $title;\nmessage: $message;\nextraData: $extraData;';
  }

  Failure toFailure();

  @override
  List get props => [
        code,
        title,
        message,
        extraData,
      ];
}

class UnhandledException extends FlowException {
  const UnhandledException({
    super.code,
    super.title,
    super.message,
    super.extraData,
  });

  @override
  Failure toFailure() {
    return UnhandledFailure(
      code: code,
      title: title,
      message: message,
      extraData: extraData,
    );
  }
}

class ServerException extends FlowException {
  const ServerException({
    super.code,
    super.title,
    super.message,
    super.extraData,
  });

  @override
  Failure toFailure() {
    return ServerFailure(
      code: code,
      title: title,
      message: message,
      extraData: extraData,
    );
  }
}
