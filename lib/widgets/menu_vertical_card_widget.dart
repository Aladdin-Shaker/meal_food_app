import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/models/menu.dart';
import 'package:meal_food_app/screens/menu/menu_item_screen.dart';

Widget menuVerticalCardWidget(Menu menu, int index, BuildContext context) {
  final double widgetWidth = SizeManager.screenWidth / 1.3;

  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MenuItemScreen(menuTitle: menu.title),
        ),
      );
    },
    child: Container(
      margin: const EdgeInsets.only(bottom: AppMarging.m24),
      height: SizeManager.screenWidth / 4.5,
      width: widgetWidth,
      decoration: const BoxDecoration(
        color: ColorManager.white,
        boxShadow: [
          BoxShadow(
            color: ColorManager.placehoder,
            blurRadius: 100,
            blurStyle: BlurStyle.inner,
            offset: Offset(4, 4),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSize.s40),
          bottomLeft: Radius.circular(AppSize.s40),
          topRight: Radius.circular(AppSize.s14),
          bottomRight: Radius.circular(AppSize.s14),
        ),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: widgetWidth - 50,
            child: buildImgShape(menu.image, index),
          ),
          const SizedBox(width: AppSize.s25),
          Positioned(
            left: widgetWidth / 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menu.title,
                  style: getBoldStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s22,
                  ),
                ),
                Text(
                  "${menu.itemsCount.toString()} Items",
                  style: getLightStyle(
                    color: ColorManager.placehoder,
                    fontSize: FontSizes.s12,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: widgetWidth - 15,
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.white,
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.placehoder,
                    blurRadius: 5,
                    blurStyle: BlurStyle.outer,
                    offset: Offset(2, 1),
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          MenuItemScreen(menuTitle: menu.title),
                    ),
                  );
                },
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: ColorManager.main,
                  size: FontSizes.s18,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildImgShape(String image, int index) {
  switch (index) {
    case 0:
      return Container(
        width: SizeManager.screenWidth / 6,
        height: SizeManager.screenWidth / 6,
        decoration: BoxDecoration(
          borderRadius: buildImageBorder(index),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
      );
    case 1:
      return Container(
        width: SizeManager.screenWidth / 6,
        height: SizeManager.screenWidth / 6,
        decoration: BoxDecoration(
          borderRadius: buildImageBorder(index),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
      );
    case 2:
      return ClipPath(
        clipBehavior: Clip.antiAlias,
        clipper: TriangleClipper(),
        child: Container(
          width: SizeManager.screenWidth / 4,
          height: SizeManager.screenWidth / 6,
          decoration: BoxDecoration(
            borderRadius: buildImageBorder(index),
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
      );
    case 3:
      return Transform.rotate(
        angle: pi / 4,
        child: Container(
          width: SizeManager.screenWidth / 6,
          height: SizeManager.screenWidth / 6,
          decoration: BoxDecoration(
            borderRadius: buildImageBorder(index),
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

    default:
      return Container(
        width: SizeManager.screenWidth / 6,
        height: SizeManager.screenWidth / 6,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
      );
  }
}

BorderRadius buildImageBorder(int index) {
  if (index == 0) {
    return BorderRadius.circular(AppSize.s50);
  } else if (index == 1) {
    return const BorderRadius.all(Radius.circular(AppSize.s20));
  } else if (index == 2) {
    return const BorderRadius.all(Radius.circular(AppSize.s50));
  } else if (index == 3) {
    return const BorderRadius.all(Radius.circular(AppSize.s20));
  } else {
    // default
    return BorderRadius.circular(AppSize.s50);
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 4.0);
    path.lineTo(size.width, size.height);
    path.lineTo(3.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
