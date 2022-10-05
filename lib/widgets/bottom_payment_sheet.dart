import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';

void bottomPaymentSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    clipBehavior: Clip.antiAlias,
    isScrollControlled: true,
    isDismissible: true,
    enableDrag: true,
    useRootNavigator: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(AppSize.s10),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
        height: SizeManager.screenHeight - 100,
        padding: const EdgeInsets.all(AppPadding.p20),
        child: ListView(
          shrinkWrap: true,
          children: [
            Text(
              'Add Credit/Debit Card',
              style: getBoldStyle(
                fontSize: AppSize.s12,
                color: ColorManager.primary,
              ),
            ),
            const Divider(),
            const SizedBox(height: AppSize.s18),
            TextFormField(
              // onSaved: (newValue) {},
              // validator: (value) {},
              textAlign: TextAlign.start,
              enableSuggestions: false,
              decoration: InputDecoration(
                hintText: StringsManager.cardNo,
              ),
            ),
            const SizedBox(height: AppSize.s18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Expiry',
                  style: getSemiBoldStyle(
                    fontSize: AppSize.s14,
                    color: ColorManager.primary,
                  ),
                ),
                SizedBox(
                  width: SizeManager.screenWidth / 4,
                  child: TextFormField(
                    // onSaved: (newValue) {},
                    // validator: (value) {},
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    enableSuggestions: false,
                    decoration: const InputDecoration(
                      hintText: 'MM',
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeManager.screenWidth / 4,
                  child: TextFormField(
                    // onSaved: (newValue) {},
                    // validator: (value) {},
                    maxLines: 1,

                    textAlign: TextAlign.start,
                    enableSuggestions: false,
                    decoration: const InputDecoration(
                      hintText: 'YY',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s18),
            TextFormField(
              // onSaved: (newValue) {},
              // validator: (value) {},
              textAlign: TextAlign.start,
              enableSuggestions: false,
              decoration: InputDecoration(
                hintText: StringsManager.securityCode,
              ),
            ),
            const SizedBox(height: AppSize.s18),
            TextFormField(
              // onSaved: (newValue) {},
              // validator: (value) {},
              textAlign: TextAlign.start,
              enableSuggestions: false,
              decoration: InputDecoration(
                hintText: StringsManager.firstName,
              ),
            ),
            const SizedBox(height: AppSize.s18),
            TextFormField(
              // onSaved: (newValue) {},
              // validator: (value) {},
              textAlign: TextAlign.start,
              enableSuggestions: false,
              decoration: InputDecoration(
                hintText: StringsManager.lastName,
              ),
            ),
            const SizedBox(height: AppSize.s18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: SizeManager.screenWidth / 2,
                  child: Text(
                    'You can remove this card at anytime ',
                    style: getMeduimStyle(
                      fontSize: AppSize.s14,
                      color: ColorManager.primary,
                    ),
                  ),
                ),
                Switch(
                  value: false,
                  activeColor: ColorManager.main,
                  onChanged: (value) {},
                )
              ],
            ),
            const SizedBox(height: AppSize.s18),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.add,
                size: AppSize.s30,
              ),
              label: Text(
                StringsManager.addcart,
                style: getSemiBoldStyle(
                  color: ColorManager.white,
                  fontSize: FontSizes.s16,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
