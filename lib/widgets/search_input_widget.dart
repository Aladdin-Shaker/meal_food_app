import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

Widget searchInputwidget() {
  return TextFormField(
    // onSaved: (newValue) {},
    // validator: (value) {},
    obscureText: true,
    textAlign: TextAlign.start,
    enableSuggestions: false,
    style: getNormalStyle(
      color: ColorManager.placehoder,
      fontSize: AppSize.s14,
    ),
    decoration: InputDecoration(
      prefixIcon: const Icon(
        Icons.search,
        size: AppSize.s36,
        color: ColorManager.placehoder,
      ),
      hintText: StringsManager.searchHint,
    ),
  );
}
