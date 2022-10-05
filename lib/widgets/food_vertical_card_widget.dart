import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/models/food.dart';

Widget foodVerticalCardWidget(Food food) {
  return Container(
    margin: const EdgeInsets.only(bottom: AppMarging.m20),
    height: SizeManager.screenWidth / 4,
    child: Card(
      elevation: 0,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: SizeManager.screenWidth / 4,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(AppSize.s10),
                  ),
                  child: Image.asset(
                    food.image,
                    fit: BoxFit.cover,
                    alignment: Alignment.topLeft,
                    width: SizeManager.screenWidth / 4,
                    height: (SizeManager.screenWidth / 4) - 10,
                  ),
                ),
              ),
              const SizedBox(width: AppSize.s20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    food.title,
                    overflow: TextOverflow.ellipsis,
                    style: getBoldStyle(
                      color: ColorManager.primary,
                      fontSize: FontSizes.s18,
                    ),
                  ),
                  const SizedBox(height: AppSize.s8),
                  Text(
                    food.specialization,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: getLightStyle(
                      color: ColorManager.placehoder,
                    ),
                  ),
                  const SizedBox(height: AppSize.s6),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: ColorManager.main,
                        size: AppSize.s14,
                      ),
                      const SizedBox(width: AppSize.s4),
                      Text(
                        food.rating.toString(),
                        textAlign: TextAlign.start,
                        style: getLightStyle(
                          color: ColorManager.main,
                        ),
                      ),
                      const SizedBox(width: AppSize.s4),
                      Text(
                        "(${food.ratingCount} ratings)",
                        textAlign: TextAlign.start,
                        style: getLightStyle(
                          color: ColorManager.placehoder,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
