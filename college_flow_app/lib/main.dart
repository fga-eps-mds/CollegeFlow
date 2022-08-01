import 'package:college_flow_app/config/routes/flow_router.dart';
import 'package:college_flow_app/config/routes/flow_routes.dart';
import 'package:college_flow_app/config/themes/custom_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme().themeData,
      scrollBehavior: const ScrollBehaviorModified(),
      initialRoute: FlowRoutes.mainPage,
      onGenerateRoute: FlowRouter.routeFromSettings,
    );
  }
}

class ScrollBehaviorModified extends ScrollBehavior {
  const ScrollBehaviorModified();

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.android:
        return const BouncingScrollPhysics();
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return const ClampingScrollPhysics();
      default:
        return const ClampingScrollPhysics();
    }
  }
}
