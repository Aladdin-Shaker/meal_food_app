import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

Widget moreCard(BuildContext context, String route, String title, Icon icon,
    {String? alert}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(route);
    },
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(AppPadding.p14),
          width: SizeManager.screenWidth,
          height: getProportionateScreenHeight(75),
          decoration: const BoxDecoration(
            color: ColorManager.grey,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: AppSize.s30,
                backgroundColor: ColorManager.greyBold,
                foregroundColor: ColorManager.white,
                child: Align(
                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: () {},
                    icon: icon,
                    color: ColorManager.primary,
                    iconSize: AppSize.s30,
                  ),
                ),
              ),
              const SizedBox(width: AppMarging.m20),
              Text(
                title,
                style: getMeduimStyle(
                  color: ColorManager.primary,
                  fontSize: FontSizes.s14,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              alert != null
                  ? Container(
                      width: 25,
                      height: 25,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorManager.error,
                      ),
                      child: Text(
                        alert,
                        textAlign: TextAlign.center,
                        style: getLightStyle(
                          color: ColorManager.white,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
              const SizedBox(width: AppMarging.m20),
            ],
          ),
        ),
        Positioned(
          top: 25,
          right: -15,
          child: Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.grey,
            ),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorManager.primary,
                size: FontSizes.s18,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
