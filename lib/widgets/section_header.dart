import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

Widget sectionHeader(String title, String route, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      right: AppPadding.p8,
      left: AppPadding.p6,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: getExtraBoldStyle(
            color: ColorManager.primary,
            fontSize: FontSizes.s20,
          ),
        ),
        InkWell(
          onTap: () => Navigator.pushNamed(context, route),
          child: Text(
            StringsManager.viewAll,
            style: getMeduimStyle(
              color: ColorManager.main,
            ),
          ),
        ),
      ],
    ),
  );
}
