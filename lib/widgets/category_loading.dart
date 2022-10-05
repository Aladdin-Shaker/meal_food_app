import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/widgets/loaders/skelton_loading_widget.dart';

SizedBox categoryLoading() {
  return SizedBox(
    height: SizeManager.screenWidth / 3,
    child: ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            SkeltonLoadingWidget(
              margin: const EdgeInsets.only(right: AppMarging.m12),
              height: SizeManager.screenWidth / 4,
              width: SizeManager.screenWidth / 4,
            ),
            const SizedBox(height: AppSize.s10),
            SkeltonLoadingWidget(
              margin: const EdgeInsets.only(right: 2),
              height: AppSize.s16,
              width: SizeManager.screenWidth / 4,
            ),
          ],
        );
      },
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      shrinkWrap: false,
    ),
  );
}
