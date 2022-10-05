import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

Row addProductToCartWidget() {
  return Row(
    children: [
      Text(
        'Number of Portions',
        style: getSemiBoldStyle(
            color: ColorManager.primary, fontSize: FontSizes.medium),
      ),
      const Spacer(),
      InkWell(
        child: Container(
          width: getProportionateScreenWidth(AppSize.s40),
          height: getProportionateScreenWidth(AppSize.s26),
          decoration: const BoxDecoration(
            color: ColorManager.main,
            borderRadius: BorderRadius.all(
              Radius.circular(AppSize.s34),
            ),
          ),
          child: Center(
            child: Text(
              '-',
              style: getMeduimStyle(color: ColorManager.white),
            ),
          ),
        ),
      ),
      const SizedBox(width: AppSize.s18),
      InkWell(
        child: Container(
          width: getProportionateScreenWidth(AppSize.s40),
          height: getProportionateScreenWidth(AppSize.s26),
          decoration: BoxDecoration(
            color: ColorManager.white,
            border: Border.all(color: ColorManager.main),
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSize.s34),
            ),
          ),
          child: Center(
            child: Text(
              '3',
              style: getMeduimStyle(color: ColorManager.main),
            ),
          ),
        ),
      ),
      const SizedBox(width: AppSize.s18),
      InkWell(
        child: Container(
          width: getProportionateScreenWidth(AppSize.s40),
          height: getProportionateScreenWidth(AppSize.s26),
          decoration: const BoxDecoration(
            color: ColorManager.main,
            borderRadius: BorderRadius.all(
              Radius.circular(AppSize.s34),
            ),
          ),
          child: Center(
            child: Text(
              '+',
              style: getMeduimStyle(color: ColorManager.white),
            ),
          ),
        ),
      ),
    ],
  );
}
