import 'package:flutter/material.dart';

enum AnimationByRoute {
  defaultOption,
  bottomToTop,
}

class NavigatorHelper {
  static RouteSettings createSettings(Widget page) {
    return RouteSettings(name: page.toStringShort());
  }

  static Route createRoute(
    Widget page, {
    bool keepStateAlive = true,
    RouteSettings? settings,
    AnimationByRoute animation = AnimationByRoute.defaultOption,
  }) {
    switch (animation) {
      case AnimationByRoute.defaultOption:
        return MaterialPageRoute(
            settings: settings ?? createSettings(page),
            maintainState: keepStateAlive,
            builder: (_) {
              return page;
            });
      case AnimationByRoute.bottomToTop:
        return animateBottomToTop(
          page,
          keepStateAlive: keepStateAlive,
          settings: settings,
        );
    }
  }

  static Route animateBottomToTop(
    Widget page, {
    bool keepStateAlive = true,
    RouteSettings? settings,
  }) {
    return PageRouteBuilder(
      settings: settings ?? createSettings(page),
      maintainState: keepStateAlive,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;
        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
