import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/features/splash/presentation/walkthrough_page.dart';
import 'package:college_flow_app/utils/helpers/navigator_helper.dart';
import 'package:flutter/material.dart' hide Router;

abstract class FlowRouter {
  static Route routeFromSettings(RouteSettings settings) {
    late Widget page;

    switch (settings.name) {
      case FlowRoutes.mainPage:
      default:
        page = const WalkthroughPage();
        break;
    }

    return NavigatorHelper.createRoute(page);
  }
}
