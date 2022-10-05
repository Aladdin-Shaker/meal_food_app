import 'package:flutter/material.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/screens/home/home_screen.dart';
import 'package:meal_food_app/screens/menu/menu_screen.dart';
import 'package:meal_food_app/screens/more/more_screen.dart';
import 'package:meal_food_app/screens/offers/offers_screen.dart';
import 'package:meal_food_app/screens/profile/profile_screen.dart';

class InitController extends ChangeNotifier {
  int selectedBottomBarIndex = 2;

  String appbarTitle = StringsManager.homeTitle;

  Widget _currentPage = const HomeScreen();
  Widget get getCurrentPage => _currentPage;

  void onSelectBottomBarItem(int index) {
    if (selectedBottomBarIndex == index) {
      return;
    } else {
      selectedBottomBarIndex = index;
      switch (index) {
        case 0:
          _currentPage = const MenuScreen();
          appbarTitle = StringsManager.menuTitle;
          break;
        case 1:
          _currentPage = const Center(child: OffersScreen());
          appbarTitle = StringsManager.offersTitle;

          break;
        case 2:
          _currentPage = const HomeScreen();
          appbarTitle = StringsManager.homeTitle;

          break;
        case 3:
          _currentPage = const ProfileScreen();
          appbarTitle = StringsManager.profileTitle;

          break;
        case 4:
          _currentPage = const Center(child: MoreScreen());
          appbarTitle = StringsManager.moreTitle;

          break;
        default:
      }

      notifyListeners();
    }
  }
}
