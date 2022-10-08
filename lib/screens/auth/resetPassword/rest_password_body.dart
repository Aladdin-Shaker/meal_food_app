import 'package:flutter/material.dart';

import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/routes_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

SafeArea resetPasswordBody(BuildContext context) {
  return SafeArea(
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(AppPadding.p36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            StringsManager.resetPassword,
            style: getExtraBoldStyle(color: ColorManager.primary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppMarging.m20),
          Text(
            StringsManager.resetPasswordNote,
            style: getMeduimStyle(color: ColorManager.secondary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppMarging.m96),
          TextFormField(
            // onSaved: (newValue) {},
            // validator: (value) {},
            textAlign: TextAlign.start,
            enableSuggestions: true,
            decoration: InputDecoration(
              hintText: StringsManager.email,
            ),
          ),
          const SizedBox(height: AppMarging.m28),
          ElevatedButton(
            onPressed: () {
              // send api request
              // navigate then
              Navigator.pushReplacementNamed(
                context,
                Routes.otpRoute,
              );
            },
            child: Text(StringsManager.send),
          ),
          const SizedBox(height: AppMarging.m28),
          const Spacer(),
        ],
      ),
    ),
  );
}
