import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';

AppBar appbarWidget({
  String? title,
  Color backGColor = ColorManager.white,
  Color iconColor = ColorManager.primary,
}) {
  return AppBar(
    title: title != null ? Text(title) : const SizedBox.shrink(),
    centerTitle: false,
    elevation: 0,
    backgroundColor: backGColor,
    iconTheme: IconThemeData(color: iconColor),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.shopping_cart_sharp,
          color: iconColor,
        ),
      ),
    ],
  );
}
