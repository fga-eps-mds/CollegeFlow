import 'package:flutter/material.dart';

enum FlowIconData {
  close,
  delete,
  add,
  home,
  chevronLeft,
}

extension IconParsing on FlowIconData {
  IconData? toIconData() {
    switch (this) {
      case FlowIconData.home:
        return Icons.home_rounded;
      case FlowIconData.close:
        return Icons.close_rounded;
      case FlowIconData.delete:
        return Icons.delete_rounded;
      case FlowIconData.add:
        return Icons.add_rounded;
      case FlowIconData.chevronLeft:
        return Icons.chevron_left_rounded;
      default:
        return null;
    }
  }
}
