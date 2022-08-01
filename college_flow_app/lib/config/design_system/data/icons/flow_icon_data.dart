import 'package:college_flow_app/config/design_system/data/icons/gallery.dart';
import 'package:flutter/material.dart';

enum FlowIconData {
  close,
  delete,
  add,
  home,
  chevronLeft,
  registerStudent,
  registerAdmin,
  registerProfessor,
}

extension IconParsing on FlowIconData {
  String? toPath(double size) {
    switch (this) {
      case FlowIconData.registerAdmin:
        return IconPaths.registerAdminIcon.path;
      case FlowIconData.registerStudent:
        return IconPaths.registerStudentIcon.path;
      case FlowIconData.registerProfessor:
        return IconPaths.registeProfessorIcon.path;
      default:
        return null;
    }
  }

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
