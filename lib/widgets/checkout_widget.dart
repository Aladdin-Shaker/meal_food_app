import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/screens/more/address/address_screen.dart';
import 'package:meal_food_app/widgets/bottom_payment_sheet.dart';

Widget checkoutWidget(BuildContext context) {
  String paymentMethodType = "deliviery";

  return ListView(
    shrinkWrap: true,
    children: [
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p10,
        ),
        width: SizeManager.screenWidth,
        // height: 100,
        color: ColorManager.white,
        child: Text(
          StringsManager.deliveryAddress,
          style: getLightStyle(
            color: ColorManager.primary,
            fontSize: FontSizes.s13,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p10,
        ),
        width: SizeManager.screenWidth,
        color: ColorManager.white,
        child: Row(
          children: [
            Expanded(
              child: Text(
                "653 Nostrand Ave., Brooklyn, NY 11216",
                style: getBoldStyle(
                  color: ColorManager.primary,
                  fontSize: FontSizes.s14,
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChangeAddressScreen(),
                  ),
                );
              },
              child: Text(
                StringsManager.change,
                style: getBoldStyle(
                  color: ColorManager.main,
                  fontSize: FontSizes.s14,
                ),
              ),
            )
          ],
        ),
      ),
      const SizedBox(height: AppSize.s12),
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p10,
        ),
        width: SizeManager.screenWidth,
        color: ColorManager.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringsManager.paymentMethod,
                  style: getBoldStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s13,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () => bottomPaymentSheet(context),
                  child: const Icon(
                    CupertinoIcons.add,
                    color: ColorManager.main,
                    size: FontSizes.s20,
                  ),
                ),
                const SizedBox(width: AppSize.s6),
                InkWell(
                  onTap: () => bottomPaymentSheet(context),
                  child: Text(
                    StringsManager.addcard,
                    style: getBoldStyle(
                      color: ColorManager.main,
                      fontSize: FontSizes.s13,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s14),
            Container(
              color: ColorManager.greyLight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppPadding.p22),
                    child: Text(
                      'Cash on delivery',
                      style: getBoldStyle(
                        color: ColorManager.primary,
                        fontSize: FontSizes.s13,
                      ),
                    ),
                  ),
                  Radio(
                    value: "Cash on delivery",
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) {
                        return ColorManager.main;
                      }
                      return Colors.orange;
                    }),
                    groupValue: paymentMethodType,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSize.s8),
            Container(
              color: ColorManager.greyLight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppPadding.p22),
                    child: Text(
                      'Card 1',
                      style: getBoldStyle(
                        color: ColorManager.primary,
                        fontSize: FontSizes.s13,
                      ),
                    ),
                  ),
                  Radio(
                    value: "Card 1",
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) {
                        return ColorManager.main;
                      }
                      return Colors.orange;
                    }),
                    groupValue: paymentMethodType,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSize.s8),
            Container(
              color: ColorManager.greyLight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppPadding.p22),
                    child: Text(
                      'Card 2',
                      style: getBoldStyle(
                        color: ColorManager.primary,
                        fontSize: FontSizes.s13,
                      ),
                    ),
                  ),
                  Radio(
                    value: "Card 2",
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) {
                        return ColorManager.main;
                      }
                      return Colors.orange;
                    }),
                    groupValue: paymentMethodType,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSize.s8),
          ],
        ),
      ),
      const SizedBox(height: AppSize.s12),
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p10,
        ),
        width: SizeManager.screenWidth,
        // height: 100,
        color: ColorManager.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub total',
                  style: getLightStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s13,
                  ),
                ),
                const Spacer(),
                Text(
                  '\$68',
                  style: getBoldStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s13,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Cost',
                  style: getLightStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s13,
                  ),
                ),
                const Spacer(),
                Text(
                  '\$2',
                  style: getBoldStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s13,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount',
                  style: getLightStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s13,
                  ),
                ),
                const Spacer(),
                Text(
                  '\$-4',
                  style: getBoldStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s13,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s14),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: getLightStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s13,
                  ),
                ),
                const Spacer(),
                Text(
                  '\$-66',
                  style: getBoldStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s13,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s8),
          ],
        ),
      ),
      const SizedBox(height: AppSize.s12),
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
          vertical: AppPadding.p10,
        ),
        color: Colors.white,
        width: SizeManager.screenWidth,
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const CheckoutScreen(),
            //   ),
            // );
          },
          child: Text(StringsManager.sendOrder),
        ),
      ),
    ],
  );
}
