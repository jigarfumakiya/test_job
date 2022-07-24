import 'package:flutter/material.dart';
import 'package:flutter_task/core/common_widget/not_found.dart';

import '../../features/landing/presentation/pages/base_home.dart';
import '../../features/practitioner/presentation/pages/practitioner_detail.dart';

class RoutesPath {
  /// List all the screen name
  static const String landing = '/';
  static const String practitionerDetailsWeb = '/practitionerDetails';
}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    ///Map the screen name to widget
    switch (settings.name) {
      case RoutesPath.practitionerDetailsWeb:
        return MaterialPageRoute(
            builder: (_) => PractitionerDetails(
                  key: ObjectKey(settings.name),
                  // next: homeView(settings),
                ),
            settings: RouteSettings(name: settings.name));
      case RoutesPath.landing:
        return MaterialPageRoute(
            builder: (_) => BaseHome(
                  key: ObjectKey(settings.name),
                  // next: homeView(settings),
                ),
            settings: RouteSettings(name: settings.name));
      default:
        return MaterialPageRoute(
            builder: (_) => NotFound(
                  key: ObjectKey(settings.name),
                  // next: homeView(settings),
                ),
            settings: RouteSettings(name: settings.name));
    }
  }
}
