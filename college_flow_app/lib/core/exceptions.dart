import 'package:equatable/equatable.dart';

import 'failures.dart';

abstract class FlowException extends Equatable implements Exception {
  final int? code;
  final String? title;
  final String? message;
  final Map<String, dynamic> extraData;

  const FlowException({
    required this.code,
    required this.title,
    required this.message,
    required this.extraData,
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
    required super.code,
    required super.title,
    required super.message,
    required super.extraData,
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
