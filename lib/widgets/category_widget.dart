import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/models/category.dart';

Widget categoryWidget(Category category) {
  return Container(
    margin: const EdgeInsets.only(right: AppMarging.m12),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s10)),
          child: Image.network(
            category.image,
            width: SizeManager.screenWidth / 4,
            height: SizeManager.screenWidth / 4,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: AppSize.s10),
        Text(
          category.title,
          style: getBoldStyle(
            color: ColorManager.primary,
            fontSize: FontSizes.s14,
          ),
        ),
      ],
    ),
  );
}
