import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/widgets/loaders/skelton_loading_widget.dart';

Widget foodVerticalCardLoading() {
  return ListView.builder(
    itemCount: 3,
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) {
      return Container(
        margin: const EdgeInsets.only(bottom: AppMarging.m20),
        height: SizeManager.screenWidth / 4,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeltonLoadingWidget(
                  margin: const EdgeInsets.only(right: AppMarging.m0),
                  width: SizeManager.screenWidth / 4,
                  height: (SizeManager.screenWidth / 4) - 10,
                ),
                const SizedBox(width: AppSize.s20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SkeltonLoadingWidget(
                      margin: const EdgeInsets.only(right: AppMarging.m0),
                      width: SizeManager.screenWidth / 2,
                      height: AppSize.s26,
                    ),
                    const SizedBox(height: AppSize.s10),
                    SkeltonLoadingWidget(
                      margin: const EdgeInsets.only(right: AppMarging.m0),
                      width: SizeManager.screenWidth / 4,
                      height: AppSize.s20,
                    ),
                    const SizedBox(height: AppSize.s6),
                    Row(
                      children: [
                        SkeltonLoadingWidget(
                          margin: const EdgeInsets.only(right: AppMarging.m0),
                          width: SizeManager.screenWidth / 4,
                          height: AppSize.s20,
                        ),
                        const SizedBox(width: AppSize.s4),
                        SkeltonLoadingWidget(
                          margin: const EdgeInsets.only(right: AppMarging.m0),
                          width: SizeManager.screenWidth / 4,
                          height: AppSize.s20,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      );
    },
  );
}
