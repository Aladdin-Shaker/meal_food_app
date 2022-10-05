import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

Widget reviewStars(int rate) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Row(
        children: [
          for (int i = 1; i <= rate; ++i)
            const Icon(
              Icons.star,
              color: ColorManager.main,
              size: AppSize.s24,
            ),
          for (int i = 0; i < 5 - rate; ++i)
            const Icon(
              Icons.star_border,
              color: ColorManager.main,
              size: AppSize.s24,
            ),
        ],
      ),
      const SizedBox(height: AppSize.s6),
      Text(
        '${rate.toString()} Star ratings',
        textAlign: TextAlign.start,
        style: getLightStyle(
          color: ColorManager.main,
        ),
      ),
    ],
  );
}
