import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/presentation/login/login_pages.dart';
import 'package:college_flow_app/presentation/login/register_page.dart';
import 'package:college_flow_app/presentation/walkthrough/walkthrough_page.dart';
import 'package:college_flow_app/utils/helpers/navigator_helper.dart';
import 'package:flutter/material.dart' hide Router;

abstract class FlowRouter {
  static Route routeFromSettings(RouteSettings settings) {
    late Widget page;

    switch (settings.name) {
      case FlowRoutes.RegisterPage:
        page = const RegisterPage();
        break;
      case FlowRoutes.LoginPage:
        page = const LoginPage();
        break;
      case FlowRoutes.mainPage:
      default:
        page = const WalkthroughPage();
        break;
    }

    return NavigatorHelper.createRoute(page);
  }
}
