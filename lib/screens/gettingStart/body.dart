import 'package:flutter/material.dart';

import 'package:meal_food_app/config/assets_manager.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/routes_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

Widget body(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.passthrough,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          const Image(
            fit: BoxFit.fill,
            width: double.infinity,
            image: AssetImage(ImagesAssets.topOrangeImg),
          ),
          Positioned.fill(
            top: SizeManager.screenHeight / 3,
            child: Center(
              child: Image.asset(
                ImagesAssets.logo,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: AppPadding.p28),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                StringsManager.gettingStartDesc,
                style: getMeduimStyle(color: ColorManager.secondary),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.loginRoute);
                },
                child: Text(
                  StringsManager.login,
                ),
              ),
              const SizedBox(height: AppPadding.p28),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.signupRoute);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.white,
                  side: const BorderSide(
                    color: ColorManager.main,
                  ),
                ),
                child: Text(
                  StringsManager.createAccount,
                  style: const TextStyle(color: ColorManager.main),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    ],
  );
}
