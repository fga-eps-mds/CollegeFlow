import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/features/authentication/presentation/login/login_page.dart';
import 'package:college_flow_app/features/authentication/presentation/register/admin/register_adm.dart';
import 'package:college_flow_app/features/authentication/presentation/register/register_geral.dart';
import 'package:college_flow_app/features/authentication/presentation/register/register_page.dart';
import 'package:college_flow_app/features/authentication/presentation/register/student/register_student.dart';
import 'package:college_flow_app/features/authentication/presentation/register/teacher/register_teacher.dart';
import 'package:college_flow_app/features/splash/presentation/walkthrough_page.dart';
import 'package:college_flow_app/utils/helpers/navigator_helper.dart';
import 'package:flutter/material.dart' hide Router;

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

      case FlowRoutes.registerAdmin:
        page = const RegisterAdministrator();
        break;
      case FlowRoutes.registerProfessor:
        page = const RegisterTeacher();
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
