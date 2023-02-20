import 'package:flutter/material.dart';
import 'package:flutter_starter_template/presentation/resources/strings_manager.dart';

class AppRouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case Routes.splashRoute:
      //   return MaterialPageRoute(builder: (_) => SplashView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) =>
            Scaffold(appBar: AppBar(title: const Text(AppStrings.noRouteFound)), body: const Center(child: Text(AppStrings.noRouteFound))));
  }
}
