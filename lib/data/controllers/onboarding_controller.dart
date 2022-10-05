import 'package:flutter/material.dart';
import 'package:meal_food_app/config/assets_manager.dart';
import 'package:meal_food_app/models/on_boarding.dart';

import '../../config/strings_manager.dart';

class OnBoardingController extends ChangeNotifier {
  final PageController pageController = PageController();
  int _currentIndex = 0;

  final List<OnBoarding> _slides = [
    OnBoarding(
      image: ImagesAssets.onBoarding_1,
      title: StringsManager.onBoardingTitle_1,
      description: StringsManager.onBoardingDescription_1,
    ),
    OnBoarding(
      image: ImagesAssets.onBoarding_2,
      title: StringsManager.onBoardingTitle_2,
      description: StringsManager.onBoardingDescription_2,
    ),
    OnBoarding(
      image: ImagesAssets.onBoarding_3,
      title: StringsManager.onBoardingTitle_3,
      description: StringsManager.onBoardingDescription_3,
    ),
  ];

  List<OnBoarding> get slides => _slides;

  int get currentIndex => _currentIndex;

  void onPageChanged(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  int onNextPage() {
    ++_currentIndex;
    if (_currentIndex > slides.length - 1) {
      _currentIndex = 0;
    }
    notifyListeners();
    return _currentIndex;
  }
}
