import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/widgets/loaders/skelton_loading_widget.dart';

Widget foodHorizontalCardLoading() {
  return SizedBox(
    height: SizeManager.screenWidth / 2,
    width: double.infinity,
    child: ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      shrinkWrap: false,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(right: 15),
          width: SizeManager.screenWidth / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SkeltonLoadingWidget(
                margin: const EdgeInsets.only(right: AppMarging.m12),
                height: SizeManager.screenWidth / 4,
                width: SizeManager.screenWidth / 2,
              ),
              const SizedBox(height: AppSize.s4),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(AppSize.s10),
                        ),
                        child: SkeltonLoadingWidget(
                          margin: const EdgeInsets.all(AppMarging.m4),
                          height: AppSize.s16,
                          width: SizeManager.screenWidth / 3,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSize.s4),
                    Padding(
                      padding: const EdgeInsets.all(AppPadding.p4),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SkeltonLoadingWidget(
                                margin: const EdgeInsets.only(
                                  right: AppMarging.m4,
                                  bottom: AppMarging.m4,
                                ),
                                height: AppSize.s16,
                                width: SizeManager.screenWidth / 4,
                              ),
                              SkeltonLoadingWidget(
                                margin: const EdgeInsets.only(
                                  right: AppMarging.m4,
                                  bottom: AppMarging.m4,
                                ),
                                height: AppSize.s16,
                                width: SizeManager.screenWidth / 6,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.s16),
            ],
          ),
        );
      },
    ),
  );
}
