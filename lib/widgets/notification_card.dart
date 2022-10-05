import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/models/notify.dart';

Container notificationCard(Notify notify) {
  return Container(
    color: notify.isRead ? ColorManager.greyBold : ColorManager.grey,
    margin: const EdgeInsets.only(bottom: AppMarging.m4),
    child: ListTile(
      dense: true,
      title: Text(
        notify.title,
        style: getSemiBoldStyle(
          color: ColorManager.primary,
          fontSize: FontSizes.s14,
        ),
      ),
      subtitle: Text(
        notify.date,
        style: getLightStyle(
          color: ColorManager.primary,
          fontSize: FontSizes.s12,
        ),
      ),
      leading: notify.isRead == true
          ? Container(
              width: getProportionateScreenWidth(10),
              height: getProportionateScreenHeight(10),
              decoration: BoxDecoration(
                color: ColorManager.main,
                borderRadius: BorderRadius.circular(25),
              ),
            )
          : const SizedBox.shrink(),
    ),
  );
}
