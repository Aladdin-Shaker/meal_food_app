import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/widgets/loaders/skelton_loading_widget.dart';

SizedBox restaurantVerticalCardLoading() {
  return SizedBox(
    height: SizeManager.screenHeight / 2,
    child: ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.vertical,
      shrinkWrap: false,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkeltonLoadingWidget(
              margin: const EdgeInsets.only(right: AppMarging.m12),
              height: SizeManager.screenWidth / 2,
              width: SizeManager.screenHeight,
            ),
            const SizedBox(height: AppSize.s4),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeltonLoadingWidget(
                    margin: const EdgeInsets.all(AppMarging.m4),
                    height: AppSize.s16,
                    width: SizeManager.screenWidth / 3,
                  ),
                  const SizedBox(height: AppSize.s4),
                  Row(
                    children: [
                      SkeltonLoadingWidget(
                        margin: const EdgeInsets.only(
                          right: AppMarging.m4,
                          bottom: AppMarging.m4,
                        ),
                        height: AppSize.s16,
                        width: SizeManager.screenWidth / 7,
                      ),
                      SkeltonLoadingWidget(
                        margin: const EdgeInsets.only(
                          right: AppMarging.m4,
                          bottom: AppMarging.m4,
                        ),
                        height: AppSize.s16,
                        width: SizeManager.screenWidth / 5,
                      ),
                      SkeltonLoadingWidget(
                        margin: const EdgeInsets.only(
                          right: AppMarging.m4,
                          bottom: AppMarging.m4,
                        ),
                        height: AppSize.s16,
                        width: SizeManager.screenWidth / 2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSize.s16),
          ],
        );
      },
    ),
  );
}
