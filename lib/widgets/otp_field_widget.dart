import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

Widget otpInputWidget(
  BuildContext context,
  FocusNode focus,
  GlobalKey formKey,
  int index,
) {
  return Container(
    width: getProportionateScreenWidth(56),
    height: getProportionateScreenHeight(56),
    alignment: Alignment.center,
    margin: const EdgeInsets.only(right: AppMarging.m18),
    child: TextFormField(
      // onSaved: (newValue) {},
      // validator: (value) {},
      textInputAction: index == 3 ? TextInputAction.done : TextInputAction.next,
      onChanged: (val) {
        if (index <= 2 &&
            val.isNotEmpty &&
            num.tryParse(val) != null &&
            val.length == 1) {
          FocusScope.of(context).nextFocus();
        } else {
          FocusScope.of(context).unfocus();
        }
      },

      autofocus: index == 0 ? true : false,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.number,
      maxLength: 1,
      maxLines: 1,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        counterText: '',
        hintText: StringsManager.star,
        fillColor: ColorManager.grey,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        // enabled border style
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.grey,
            width: AppSize.s1,
          ),
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),

        // enabled border style
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.grey,
            width: AppSize.s1,
          ),
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),

        // enabled border style
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.error,
            width: AppSize.s1,
          ),
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        hintStyle: const TextStyle(
          color: ColorManager.placehoder,
          fontSize: AppSize.s14,
        ),
      ),
    ),
  );
}
