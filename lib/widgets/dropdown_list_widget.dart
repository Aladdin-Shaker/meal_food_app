import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

Container dropdownListWidget(List<String> itemsArray, Function function) {
  return Container(
    padding: const EdgeInsets.only(
      left: AppPadding.p12,
      right: AppPadding.p18,
    ),
    color: ColorManager.grey,
    child: DropdownButton(
      elevation: 0,
      // itemHeight: 16,
      dropdownColor: ColorManager.grey,
      focusColor: ColorManager.white,
      style: const TextStyle(
        color: ColorManager.primary,
      ),
      underline: const SizedBox(height: 0, width: 0),

      value: itemsArray.first,
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: ColorManager.primary,
        size: AppSize.s30,
      ),
      alignment: Alignment.topLeft,
      isExpanded: true,
      items: itemsArray.map<DropdownMenuItem<String>>((String item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),

      onChanged: function(),
    ),
  );
}
