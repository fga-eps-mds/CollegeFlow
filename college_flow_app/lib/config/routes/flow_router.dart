import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/presentation/login/login_pages.dart';
import 'package:college_flow_app/presentation/walkthrough/walkthrough_page.dart';
import 'package:college_flow_app/utils/helpers/navigator_helper.dart';
import 'package:flutter/material.dart' hide Router;

import '../../presentation/register/register_geral.dart';
import '../../presentation/register/register_page.dart';
import '../../presentation/register/register_student.dart';

abstract class FlowRouter {
  static Route routeFromSettings(RouteSettings settings) {
    late Widget page;

    switch (settings.name) {
      case FlowRoutes.registerGeral:
        page = const RegisterGeral();
        break;
      case FlowRoutes.registerStudent:
        page = const RegisterStudent();
        break;
      case FlowRoutes.registerPage:
        page = const RegisterPage();
        break;
      case FlowRoutes.loginPage:
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