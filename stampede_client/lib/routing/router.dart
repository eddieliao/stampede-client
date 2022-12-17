import 'package:flutter/material.dart';
import 'package:stampede_client/pages/graph/graph.dart';
import 'package:stampede_client/pages/odometry/odometry.dart';
import 'package:stampede_client/pages/overview/overview.dart';
import 'package:stampede_client/pages/terminal/terminal.dart';
import 'package:stampede_client/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return getPageRoute(OverviewPage());
    case graphPageRoute:
      return getPageRoute(GraphPage());
    case odometryPageRoute:
      return getPageRoute(OdometryPage());
    case terminalPageRoute:
      return getPageRoute(TerminalPage());
    default:
      return getPageRoute(OverviewPage());
  }
}

PageRoute getPageRoute(Widget child) {
  return PageRouteBuilder(
      pageBuilder: (context, ani, ani1) => child,
      transitionDuration: const Duration(seconds: 0));
}
