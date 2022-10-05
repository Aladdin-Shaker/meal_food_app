import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/widgets/loaders/skelton_loading_widget.dart';

ListView notificationCardLoading() {
  return ListView.builder(
    itemCount: 15,
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) {
      return Container(
        margin:
            const EdgeInsets.only(bottom: AppMarging.m0, top: AppMarging.m8),
        child: Row(
          children: [
            const SizedBox(width: AppSize.s60),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeltonLoadingWidget(
                  width: SizeManager.screenWidth / 1.4,
                  height: getProportionateScreenHeight(12),
                  margin: const EdgeInsets.only(bottom: AppMarging.m10),
                ),
                SkeltonLoadingWidget(
                  width: SizeManager.screenWidth / 4,
                  height: getProportionateScreenHeight(12),
                  margin: const EdgeInsets.only(bottom: AppMarging.m10),
                ),
                const Divider(),
              ],
            ),
          ],
        ),
      );
    },
  );
}
