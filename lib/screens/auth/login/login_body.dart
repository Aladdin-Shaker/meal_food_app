import 'package:flutter/material.dart';

import 'package:meal_food_app/config/assets_manager.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/routes_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

SafeArea loginBody(BuildContext context) {
  return SafeArea(
    child: ListView(
      padding: const EdgeInsets.all(AppPadding.p30),
      children: [
        Text(
          StringsManager.login,
          style: getExtraBoldStyle(color: ColorManager.primary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppMarging.m20),
        Text(
          StringsManager.addYourDetailsLogin,
          style: getMeduimStyle(color: ColorManager.secondary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppMarging.m34),
        TextFormField(
          // onSaved: (newValue) {},
          // validator: (value) {},
          textAlign: TextAlign.start,
          enableSuggestions: true,
          decoration: InputDecoration(
            hintText: StringsManager.yourEmail,
          ),
        ),
        const SizedBox(height: AppMarging.m28),
        TextFormField(
          // onSaved: (newValue) {},
          // validator: (value) {},
          obscureText: true,
          textAlign: TextAlign.start,
          enableSuggestions: false,
          decoration: InputDecoration(
            hintText: StringsManager.password,
          ),
        ),
        const SizedBox(height: AppMarging.m28),
        ElevatedButton(
          onPressed: () {
            // send api request
            Navigator.pushReplacementNamed(context, Routes.initRoute);
          },
          child: Text(StringsManager.login),
        ),
        const SizedBox(height: AppMarging.m28),
        InkWell(
          onTap: () => Navigator.pushNamed(
            context,
            Routes.resetPasswordRoute,
          ),
          child: Text(
            StringsManager.forgotYourPass,
            style: getMeduimStyle(color: ColorManager.secondary),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: AppMarging.m54),
        Text(
          StringsManager.orLoginWith,
          style: getMeduimStyle(color: ColorManager.secondary),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppMarging.m28),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.facebookColor,
            side: const BorderSide(
              color: ColorManager.facebookColor,
            ),
          ),
          onPressed: () {
            // send api request
          },
          icon: Image.asset(
            ImagesAssets.facebookImg,
            height: AppSize.s16,
            width: AppSize.s8,
          ),
          label: Text(
            StringsManager.loginWithFb,
            style: getMeduimStyle(
                color: ColorManager.white, fontSize: AppSize.s13),
          ),
        ),
        const SizedBox(height: AppMarging.m28),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.googleColor,
            side: const BorderSide(
              color: ColorManager.googleColor,
            ),
          ),
          onPressed: () {
            // send api request
          },
          icon: Image.asset(
            ImagesAssets.googleImg,
            height: AppSize.s12,
            width: AppSize.s20,
          ),
          label: Text(
            StringsManager.loginWithGoogle,
            style: getMeduimStyle(
              color: ColorManager.white,
              fontSize: AppSize.s13,
            ),
          ),
        ),
        const SizedBox(height: AppMarging.m54),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, Routes.signupRoute);
          },
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: StringsManager.dontHaveAccount,
              style: getMeduimStyle(
                color: ColorManager.secondary,
                fontSize: AppSize.s14,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: StringsManager.signup,
                  style: getMeduimStyle(
                    color: ColorManager.main,
                    fontSize: AppSize.s14,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
