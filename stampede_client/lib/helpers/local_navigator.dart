import 'package:flutter/widgets.dart';
import 'package:stampede_client/constants/controllers.dart';
import 'package:stampede_client/routing/router.dart';
import 'package:stampede_client/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: overviewPageRoute,
      onGenerateRoute: generateRoute,
    );
