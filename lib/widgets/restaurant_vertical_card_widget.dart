import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/models/restaurant.dart';

Widget restaurantVerticalCardWidget(Restaurant restaurant) {
  return Card(
    elevation: 0,
    margin: const EdgeInsets.all(0),
    borderOnForeground: true,
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: ColorManager.white),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.network(
          restaurant.image,
          width: double.infinity,
          fit: BoxFit.contain,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
          alignment: Alignment.center,
        ),
        const SizedBox(height: AppSize.s4),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  restaurant.title,
                  textAlign: TextAlign.left,
                  style: getBoldStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s16,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.star,
                    color: ColorManager.main,
                  ),
                  const SizedBox(width: AppSize.s4),
                  Text(
                    restaurant.rating.toString(),
                    textAlign: TextAlign.start,
                    style: getLightStyle(
                      color: ColorManager.main,
                    ),
                  ),
                  const SizedBox(width: AppSize.s10),
                  Text(
                    "(${restaurant.ratingCount} ratings)",
                    textAlign: TextAlign.start,
                    style: getLightStyle(
                      color: ColorManager.placehoder,
                    ),
                  ),
                  const SizedBox(width: AppSize.s4),
                  Text(
                    restaurant.specialization,
                    textAlign: TextAlign.start,
                    style: getLightStyle(
                      color: ColorManager.placehoder,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
