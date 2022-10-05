import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/widgets/loaders/skelton_loading_widget.dart';

Widget menuVerticalCardLoading() {
  final double widgetWidth = SizeManager.screenWidth / 1.3;

  return SizedBox(
    width: widgetWidth,
    child: ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SkeltonLoadingWidget(
          height: SizeManager.screenWidth / 4.5,
          width: widgetWidth,
          margin: const EdgeInsets.only(bottom: AppMarging.m24),
        );
      },
    ),
  );
}
