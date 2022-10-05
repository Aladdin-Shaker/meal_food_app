import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/models/food.dart';

Widget foodHorizontalCardWidget(Food food) {
  return Container(
    margin: const EdgeInsets.only(right: 15),
    width: SizeManager.screenWidth / 2,
    child: Card(
      elevation: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(AppSize.s10),
              ),
              child: Image.asset(
                food.image,
                fit: BoxFit.cover,
                width: SizeManager.screenWidth / 2,
                height: SizeManager.screenWidth / 3,
              ),
            ),
          ),
          const SizedBox(height: AppSize.s4),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    food.title,
                    textAlign: TextAlign.left,
                    style: getBoldStyle(
                      color: ColorManager.primary,
                      fontSize: FontSizes.s16,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        food.specialization,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        style: getLightStyle(
                          color: ColorManager.placehoder,
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSize.s12),
                    const Icon(
                      Icons.star,
                      color: ColorManager.main,
                      size: AppSize.s12,
                    ),
                    const SizedBox(width: AppSize.s4),
                    Text(
                      food.rating.toString(),
                      textAlign: TextAlign.start,
                      style: getLightStyle(
                        color: ColorManager.main,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
