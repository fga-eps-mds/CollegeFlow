import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/presentation/first_screen/first_screen_page.dart';
import 'package:college_flow_app/presentation/second_screen/second_screen_page.dart';
import 'package:college_flow_app/presentation/walkthrough_screen/walkthrough_screen.dart';
import 'package:college_flow_app/utils/helpers/navigator_helper.dart';
import 'package:flutter/material.dart' hide Router;

abstract class FlowRouter {
  static Route routeFromSettings(RouteSettings settings) {
    late Widget page;

    switch (settings.name) {
      case FlowRoutes.secondPage:
        page = const SecondScreenPage();
        break;
      case FlowRoutes.mainPage:
      default:
        page = const WalkthroughScreen();
        break;
    }

    return NavigatorHelper.createRoute(page);
  }
}
