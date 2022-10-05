import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/widgets/loaders/skelton_loading_widget.dart';

Widget menuItemVerticalCardLoading() {
  return Container(
    margin: const EdgeInsets.only(bottom: AppMarging.m6),
    width: SizeManager.screenWidth,
    child: ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SkeltonLoadingWidget(
          height: SizeManager.screenHeight / 5,
          width: SizeManager.screenWidth,
          margin: const EdgeInsets.only(bottom: AppMarging.m24),
        );
      },
    ),
  );
}
