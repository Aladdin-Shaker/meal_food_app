import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meal_food_app/config/assets_manager.dart';
import 'package:meal_food_app/config/constants_manager.dart';
import 'package:meal_food_app/config/routes_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  _setDelay() {
    _timer = Timer(
      const Duration(seconds: ConstantsManager.splashDelay),
      _goNextCallback,
    );
  }

  _goNextCallback() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    _setDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagesAssets.splashBck),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(child: Image.asset(ImagesAssets.logo)),
      ),
    );
  }
}
