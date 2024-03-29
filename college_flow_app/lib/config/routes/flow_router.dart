import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/features/review/presentation/review_form_page.dart';
import 'package:college_flow_app/features/review/presentation/review_list_page.dart';
import 'package:college_flow_app/features/splash/presentation/walkthrough_page.dart';
import 'package:college_flow_app/features/subject/presentation/list_subjects_page.dart';
import 'package:college_flow_app/utils/helpers/navigator_helper.dart';
import 'package:flutter/material.dart' hide Router;

abstract class FlowRouter {
  static Route routeFromSettings(RouteSettings settings) {
    late Widget page;

    switch (settings.name) {
      case FlowRoutes.reviewList:
        if (settings.arguments == null) {
          throw Exception("Review Page called with params null");
        }
        final params = settings.arguments as ReviewPageParams;
        page = ReviewPage(params: params);
        break;
      case FlowRoutes.subjectsList:
        page = const ListSubjectsPage();
        break;
      case FlowRoutes.reviewForm:
        final params = settings.arguments as ReviewFormParams;
        page = ReviewForm(params: params);
        break;
      case FlowRoutes.mainPage:
      default:
        page = const WalkthroughPage();
        break;
    }

    return NavigatorHelper.createRoute(page);
  }
}
