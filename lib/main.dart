import 'package:flutter/material.dart';
import 'package:meal_food_app/config/routes_manager.dart';
import 'package:meal_food_app/data/controllers/about_controller.dart';
import 'package:meal_food_app/data/controllers/auth_controller.dart';
import 'package:meal_food_app/data/controllers/map_controller.dart';
import 'package:meal_food_app/data/controllers/menu_controller.dart';
import 'package:meal_food_app/data/controllers/notification_controller.dart';
import 'package:meal_food_app/data/controllers/onboarding_controller.dart';
import 'package:meal_food_app/config/theme_mananger.dart';
import 'package:meal_food_app/data/controllers/home_controller.dart';
import 'package:meal_food_app/data/controllers/init_controller.dart';
import 'package:meal_food_app/screens/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoardingController()),
        ChangeNotifierProvider(create: (context) => HomeController()),
        ChangeNotifierProvider(create: (context) => InitController()),
        ChangeNotifierProvider(create: (context) => MenuController()),
        ChangeNotifierProvider(create: (context) => NotificationController()),
        ChangeNotifierProvider(create: (context) => AboutController()),
        ChangeNotifierProvider(create: (context) => MapController()),
        ChangeNotifierProvider(create: (context) => AuthController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      onGenerateRoute: RouteGenerate.getRoute,
      theme: getApplicationTheme(),
    );
  }
}
