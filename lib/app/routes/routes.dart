import 'package:flutter/material.dart';
import '../../views/splash/splash_screen.dart';
import '../../views/login/login_screen.dart';
import '../../views/sign_up/sign_up_screen.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signUp = '/signup';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('No route defined'))),
        );
    }
  }
}
