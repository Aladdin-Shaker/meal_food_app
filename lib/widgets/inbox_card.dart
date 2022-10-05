import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/models/inbox.dart';

Container inboxCard(Inbox item) {
  return Container(
    color: item.isRead ? ColorManager.greyBold : ColorManager.grey,
    margin: const EdgeInsets.only(bottom: AppMarging.m6),
    padding: const EdgeInsets.only(top: AppPadding.p6, bottom: AppPadding.p6),
    child: ListTile(
      trailing: Column(
        children: [
          Expanded(
            child: Text(
              overflow: TextOverflow.visible,
              item.date,
              style: getLightStyle(
                color: ColorManager.primary,
                fontSize: FontSizes.xxSmall,
              ),
            ),
          ),
          const Icon(
            Icons.star_border,
            color: ColorManager.main,
            size: AppSize.s20,
          ),
        ],
      ),
      dense: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                overflow: TextOverflow.visible,
                item.title,
                style: getSemiBoldStyle(
                  color: ColorManager.primary,
                  fontSize: FontSizes.s14,
                ),
              ),
            ),
          ],
        ),
      ),
      subtitle: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              item.body,
              style: getLightStyle(
                color: ColorManager.primary,
                fontSize: FontSizes.s12,
              ),
            ),
          ),
        ],
      ),
      leading: item.isRead == true
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
