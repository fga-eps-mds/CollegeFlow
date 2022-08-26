import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/features/review/review_form.dart';
import 'package:college_flow_app/features/review/presentation/review_page.dart';
import 'package:college_flow_app/features/splash/presentation/walkthrough_page.dart';
import 'package:college_flow_app/utils/helpers/navigator_helper.dart';
import 'package:flutter/material.dart' hide Router;

abstract class FlowRouter {
  static Route routeFromSettings(RouteSettings settings) {
    late Widget page;

    switch (settings.name) {
      case FlowRoutes.reviewList:
        page = const ReviewPage();
        break;
      case FlowRoutes.reviewForm:
        page = const ReviewForm();
        break;
      case FlowRoutes.mainPage:
      default:
        page = const WalkthroughPage();
        break;
    }

    return NavigatorHelper.createRoute(page);
  }
}
