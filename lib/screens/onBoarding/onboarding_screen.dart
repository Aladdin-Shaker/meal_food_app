import 'package:flutter/material.dart';
import 'package:meal_food_app/data/controllers/onboarding_controller.dart';
import 'package:meal_food_app/screens/onBoarding/onboarding_view.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Provider.of<OnBoardingController>(context, listen: false);

    return Scaffold(
      body: PageView.builder(
        itemCount: ctrl.slides.length,
        controller: ctrl.pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          ctrl.onPageChanged(index);
        },
        itemBuilder: (context, index) {
          return OnBoardingView(
            ctrl.slides[index],
          );
        },
      ),
    );
  }
}
