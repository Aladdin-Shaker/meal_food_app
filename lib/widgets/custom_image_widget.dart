import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

Container customImageWidget(String imageUrl) {
  return Container(
    width: SizeManager.screenWidth,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(imageUrl),
        fit: BoxFit.cover,
      ),
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(AppSize.s34),
        bottomLeft: Radius.circular(AppSize.s34),
      ),
      color: ColorManager.main,
    ),
  );
}
