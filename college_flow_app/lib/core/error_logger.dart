import 'package:college_flow_app/core/exceptions.dart';
import 'package:flutter/material.dart';

class FlowLogger {
  static void showError(String where, String function, exception) {
    debugPrint('-----EXCEPTION LOG-----');
    debugPrint('🔴There was an error.🔴');
    debugPrint('-----------------------');
    debugPrint('Where: $where');
    debugPrint('-----------------------');
    debugPrint('Function: $function');
    debugPrint('-----------------------');
    debugPrint('Exception: $exception');
    debugPrint('-----------------------');
  }
}
