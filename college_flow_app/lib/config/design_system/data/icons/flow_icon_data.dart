import 'package:college_flow_app/config/design_system/data/icons/gallery.dart';
import 'package:flutter/material.dart';

enum FlowIconData {
  arrowLeft,
  arrowRight,
  settings,
  checkFilled,
  checkOutlined,
  chevronRight,
  chevronLeft,
  search,
  filter,
  likeFilled,
  likeOutlined,
  star,
  studentHat,
  shield,
  courses,
  editComment,
  copyLink,
  rank,
  book,
  home,
  user,
  teacher,
}

extension IconParsing on FlowIconData {
  String? toPath(double size) {
    switch (this) {
      case FlowIconData.shield:
        return IconPaths.registerAdminIcon.path;
      case FlowIconData.studentHat:
        return IconPaths.registerStudentIcon.path;
      case FlowIconData.teacher:
        return IconPaths.registeProfessorIcon.path;
      default:
        return null;
    }
  }

  IconData? toIconData() {
    switch (this) {
      case FlowIconData.arrowLeft:
        return Icons.arrow_back;
      case FlowIconData.arrowRight:
        return Icons.arrow_forward;
      case FlowIconData.settings:
        return Icons.settings;
      case FlowIconData.checkOutlined:
        return Icons.check_circle_outline_outlined;
      case FlowIconData.checkFilled:
        return Icons.check_circle_sharp;
      case FlowIconData.chevronLeft:
        return Icons.chevron_left;
      case FlowIconData.chevronRight:
        return Icons.chevron_right;
      case FlowIconData.search:
        return Icons.search;
      case FlowIconData.filter:
        return Icons.filter_list_sharp;
      case FlowIconData.likeFilled:
        return Icons.favorite_border_sharp;
      case FlowIconData.likeOutlined:
        return Icons.favorite_sharp;
      case FlowIconData.star:
        return Icons.star;
      case FlowIconData.book:
        return Icons.book_sharp;
      case FlowIconData.home:
        return Icons.home_sharp;
      case FlowIconData.rank:
        return Icons.bar_chart_sharp;
      case FlowIconData.copyLink:
        return Icons.link;
      case FlowIconData.user:
        return Icons.person_sharp;
      case FlowIconData.editComment:
        return Icons.message_sharp;
      case FlowIconData.courses:
        return Icons.view_column_sharp;
      default:
        return null;
    }
  }
}
