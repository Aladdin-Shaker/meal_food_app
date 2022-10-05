import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/data/controllers/init_controller.dart';

BottomNavigationBar bottomNavBarWidget(InitController ctrl) {
  return BottomNavigationBar(
    unselectedItemColor: ColorManager.secondary,
    selectedItemColor: ColorManager.main,
    iconSize: getProportionateScreenWidth(AppMarging.m22),
    showUnselectedLabels: true,
    enableFeedback: true,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    currentIndex: ctrl.selectedBottomBarIndex,
    onTap: ctrl.onSelectBottomBarItem,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.menu),
        label: 'Menu',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_bag_outlined),
        label: 'Offers',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.more_vert_sharp),
        label: 'More',
      )
    ],
  );
}
