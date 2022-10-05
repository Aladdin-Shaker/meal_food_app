import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // Colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.secondary,
    // primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.placehoder,
    errorColor: ColorManager.error,
    hintColor: ColorManager.main,
    backgroundColor: ColorManager.white,

    // Card view
    cardTheme: const CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.placehoder,
      elevation: AppSize.s4,
    ),

    // Appbar theme
    appBarTheme: AppBarTheme(
      centerTitle: false,
      elevation: 0,
      color: ColorManager.white,
      shadowColor: ColorManager.secondary,
      titleTextStyle: getExtraBoldStyle(
        fontSize: FontSizes.s20,
        color: ColorManager.primary,
      ),
    ),

    // Buttons theme
    buttonTheme: const ButtonThemeData(
      buttonColor: ColorManager.primary,
      shape: StadiumBorder(),
      padding: EdgeInsets.all(AppPadding.p8),
      splashColor: ColorManager.secondary,
      disabledColor: ColorManager.placehoder,
    ),

    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getNormalStyle(
          color: ColorManager.white,
          fontSize: FontSizes.s16,
        ),
        minimumSize: const Size.fromHeight(AppSize.s56),
        backgroundColor: ColorManager.main,
        shape: const StadiumBorder(),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: const StadiumBorder(),
        side: const BorderSide(
          width: AppSize.s2,
          color: ColorManager.primary,
        ),
      ),
    ),

    // Text theme

    textTheme: TextTheme(
      bodySmall: getNormalStyle(
        color: ColorManager.placehoder,
      ),
      headlineLarge: getSemiBoldStyle(
        color: ColorManager.secondary,
        fontSize: AppSize.s16,
      ),
      headlineMedium: getSemiBoldStyle(
        color: ColorManager.secondary,
        fontSize: AppSize.s14,
      ),
      titleMedium: getMeduimStyle(
        color: ColorManager.secondary,
        fontSize: AppSize.s14,
      ),
      bodyLarge: getNormalStyle(
        color: ColorManager.placehoder,
      ),
      displayLarge: getLightStyle(
        color: ColorManager.white,
        fontSize: AppSize.s20,
      ),
    ),

    // Input decoration theme (text form field)

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      contentPadding: const EdgeInsets.all(AppPadding.p20),
      fillColor: ColorManager.grey,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s28)),
        borderSide: BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),

      hintStyle: getNormalStyle(
        color: ColorManager.placehoder,
        fontSize: AppSize.s12,
      ),
      labelStyle: getMeduimStyle(
        color: ColorManager.placehoder,
        fontSize: AppSize.s14,
      ),
      errorStyle: getNormalStyle(
        color: ColorManager.error,
      ),

      // enabled border style
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorManager.grey,
          width: AppSize.s1,
        ),
        borderRadius: BorderRadius.circular(AppSize.s28),
      ),

      // enabled border style
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorManager.grey,
          width: AppSize.s1,
        ),
        borderRadius: BorderRadius.circular(AppSize.s28),
      ),

      // enabled border style
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ColorManager.error,
          width: AppSize.s1,
        ),
        borderRadius: BorderRadius.circular(AppSize.s28),
      ),
    ),
  );
}
