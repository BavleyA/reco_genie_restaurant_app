import 'package:flutter/material.dart';
import 'package:reco_genie_restaurant_app/SharedConfig/theme/theme.dart';
import 'package:reco_genie_restaurant_app/features/authentication/presentation/screens/login_screen.dart';

import 'SharedConfig/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      initialRoute: RouteManager.login,
      onGenerateRoute: RouteManager.generateRoute,

    );
  }
}
