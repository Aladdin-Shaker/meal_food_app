import 'package:flutter/material.dart';
import 'package:meal_food_app/config/constants_manager.dart';
import 'package:meal_food_app/config/routes_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:provider/provider.dart';

import '../../config/assets_manager.dart';
import '../../config/color_manager.dart';
import '../../data/controllers/onboarding_controller.dart';
import '../../models/on_boarding.dart';

class OnBoardingView extends StatefulWidget {
  final OnBoarding slide;
  const OnBoardingView(this.slide, {Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  Widget _getProperCircle(int index, int currentIndex) {
    if (index == currentIndex) {
      return Image.asset(
        ImagesAssets.indicatorCircle,
        color: ColorManager.main,
      );
    } else {
      return Image.asset(ImagesAssets.indicatorCircle);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ctrl = Provider.of<OnBoardingController>(context, listen: true);

    return Padding(
      padding: const EdgeInsets.all(AppPadding.p30),
      child: Column(
        children: <Widget>[
          const Spacer(flex: 1),
          Image.asset(widget.slide.image),
          const SizedBox(height: AppPadding.p18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < ctrl.slides.length; i++)
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p2),
                  child: _getProperCircle(i, ctrl.currentIndex),
                )
            ],
          ),
          const SizedBox(height: AppPadding.p18),
          Text(
            widget.slide.title,
            style: getBoldStyle(color: ColorManager.primary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppMarging.m30),
          Text(
            widget.slide.description,
            style: getMeduimStyle(color: ColorManager.secondary),
            textAlign: TextAlign.center,
          ),
          const Spacer(flex: 1),
          ElevatedButton(
            onPressed: () {
              if (ctrl.currentIndex == ctrl.slides.length - 1) {
                Navigator.pushReplacementNamed(
                    context, Routes.gettingStartRoute);
              } else {
                ctrl.pageController.animateToPage(
                  ctrl.onNextPage(),
                  duration: const Duration(
                    milliseconds: ConstantsManager.sliderAnimationTime,
                  ),
                  curve: Curves.easeIn,
                );
              }
            },
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              minimumSize: const Size.fromHeight(AppSize.s56),
              backgroundColor: ColorManager.main,
            ),
            child: Text(
              StringsManager.next,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
