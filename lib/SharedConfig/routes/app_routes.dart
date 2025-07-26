import 'package:flutter/material.dart';
import 'package:reco_genie_restaurant_app/features/authentication/presentation/screens/register_sceen.dart';

import '../../features/authentication/presentation/screens/login_screen.dart';
import '../../navigation_bar_menu.dart';


class RouteManager {
  static const String login = '/login';
  static const String home = '/home';
  static const String signUp = '/signUp';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const NavigationBarMenu());
      case signUp:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}