import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/models/about.dart';

Container aboutCard(About item) {
  return Container(
    color: ColorManager.grey,
    padding: const EdgeInsets.all(AppPadding.p30),
    margin: const EdgeInsets.only(bottom: AppMarging.m4),
    child: Text(
      item.body,
      style: getMeduimStyle(
        color: ColorManager.primary,
        fontSize: FontSizes.s14,
      ),
    ),
  );
}
