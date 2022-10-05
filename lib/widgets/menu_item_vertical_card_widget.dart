import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/models/menu_item.dart';
import 'package:meal_food_app/screens/menu/single_product_screen.dart';

Widget menuItemVerticalCardWidget(
    MenuItemDetails menuItem, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SingleProductScreen(menuItem: menuItem),
        ),
      );
    },
    child: Container(
      margin: const EdgeInsets.only(bottom: AppMarging.m6),
      width: SizeManager.screenWidth,
      child: Stack(
        children: [
          buildImgShape(menuItem.image),
          Positioned(
            bottom: AppSize.s50,
            left: AppSize.s20,
            child: Text(
              menuItem.title,
              style: getBoldStyle(
                color: ColorManager.white,
              ),
            ),
          ),
          Positioned(
            bottom: AppSize.s20,
            left: AppSize.s20,
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: ColorManager.main,
                ),
                const SizedBox(width: AppSize.s4),
                Text(
                  menuItem.rate.toString(),
                  textAlign: TextAlign.start,
                  style: getMeduimStyle(
                    color: ColorManager.main,
                  ),
                ),
                const SizedBox(width: AppSize.s4),
                Text(
                  menuItem.subTitle,
                  style: getMeduimStyle(
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildImgShape(String image) {
  return Container(
    width: SizeManager.screenWidth,
    height: SizeManager.screenHeight / 5,
    decoration: BoxDecoration(
      image: DecorationImage(
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.5),
          BlendMode.srcOver,
        ),
        image: NetworkImage(image),
        fit: BoxFit.cover,
      ),
    ),
  );
}
