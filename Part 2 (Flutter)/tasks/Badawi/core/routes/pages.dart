import 'package:flutter/material.dart';

import '../../onboarding/onboarding_screen.dart';
import '../../onboarding/splash_screen.dart';
import 'routes_name.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (_) {
          return const SplashScreen();
        });
      case RoutesName.onboarding:
        return MaterialPageRoute(builder: (_) {
          return const OnboardingScreen();
        });
      default:
        throw Exception('Route not found!');
    }
  }
}