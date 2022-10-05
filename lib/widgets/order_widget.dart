import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/models/food.dart';
import 'package:meal_food_app/models/ingredients.dart';
import 'package:meal_food_app/screens/more/checkout/checkout_screen.dart';

Widget orderWidget(Food item, BuildContext context) {
  return Column(
    children: [
      Container(
        width: SizeManager.screenWidth,
        margin: const EdgeInsets.only(bottom: AppMarging.m6),
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: SizeManager.screenWidth / 4.5,
              height: SizeManager.screenWidth / 4.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(item.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(AppSize.s14),
                color: ColorManager.main,
              ),
            ),
            const SizedBox(width: AppSize.s14),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: getSemiBoldStyle(
                      color: ColorManager.primary,
                      fontSize: FontSizes.s14,
                    ),
                  ),
                  const SizedBox(height: AppSize.s8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.star,
                        color: ColorManager.main,
                        size: AppSize.s16,
                      ),
                      const SizedBox(width: AppSize.s4),
                      Text(
                        item.rating.toString(),
                        textAlign: TextAlign.start,
                        style: getLightStyle(
                          color: ColorManager.main,
                        ),
                      ),
                      const SizedBox(width: AppSize.s4),
                      Text(
                        "(${item.ratingCount} ratings)",
                        textAlign: TextAlign.start,
                        style: getLightStyle(
                          color: ColorManager.placehoder,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.s8),
                  Text(
                    item.specialization,
                    style: getLightStyle(
                      color: ColorManager.primary,
                      fontSize: FontSizes.s12,
                    ),
                  ),
                  const SizedBox(height: AppSize.s8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_pin,
                        color: ColorManager.main,
                        size: AppSize.s16,
                      ),
                      const SizedBox(width: AppSize.s4),
                      Text(
                        "No 03, 4th Lane, Newyork",
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
      ),
      Container(
        color: ColorManager.greyLight,
        width: SizeManager.screenWidth,
        margin: const EdgeInsets.only(
          bottom: AppMarging.m6,
          top: AppMarging.m6,
        ),
        padding: const EdgeInsets.only(
          right: AppPadding.p16,
          left: AppPadding.p16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[...getFoodIngredients(item)],
        ),
      ),
      Container(
        // color: ColorManager.greyLight,
        width: SizeManager.screenWidth,
        margin: const EdgeInsets.only(bottom: AppMarging.m6),
        padding: const EdgeInsets.only(
          right: AppPadding.p16,
          left: AppPadding.p16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Instrusctions',
                  style: getBoldStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s13,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    CupertinoIcons.add,
                    color: ColorManager.main,
                    size: FontSizes.s20,
                  ),
                ),
                const SizedBox(width: AppSize.s6),
                Text(
                  'Add Notes',
                  style: getBoldStyle(
                    color: ColorManager.main,
                    fontSize: FontSizes.s13,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s6),
            const Divider(),
            const SizedBox(height: AppSize.s6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub total',
                  style: getBoldStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s13,
                  ),
                ),
                const Spacer(),
                Text(
                  '\$68',
                  style: getBoldStyle(
                    color: ColorManager.main,
                    fontSize: FontSizes.s13,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s6),
            const Divider(),
            const SizedBox(height: AppSize.s6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Cost',
                  style: getBoldStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s13,
                  ),
                ),
                const Spacer(),
                Text(
                  '\$2',
                  style: getBoldStyle(
                    color: ColorManager.main,
                    fontSize: FontSizes.s13,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s6),
            const Divider(),
            const SizedBox(height: AppSize.s10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: getBoldStyle(
                    color: ColorManager.primary,
                    fontSize: FontSizes.s13,
                  ),
                ),
                const Spacer(),
                Text(
                  '\$70',
                  style: getBoldStyle(
                      color: ColorManager.main, fontSize: FontSizes.s22),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s6),
            const Divider(),
            const SizedBox(height: AppSize.s6),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckoutScreen(),
                  ),
                );
              },
              child: Text(StringsManager.checkout),
            ),
          ],
        ),
      ),
    ],
  );
}

List<Widget> getFoodIngredients(Food item) {
  List<Widget> data = [];
  for (Ingredients item in item.ingredients!) {
    data.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item.title,
            style: getMeduimStyle(
              color: ColorManager.primary,
              fontSize: FontSizes.s13,
            ),
          ),
          Text(
            '\$${item.price.toString()}',
            style: getBoldStyle(
              color: ColorManager.primary,
              fontSize: FontSizes.s13,
            ),
          ),
        ],
      ),
    );
    data.add(const SizedBox(height: AppSize.s6));
    data.add(const Divider());
    data.add(const SizedBox(height: AppSize.s6));
  }
  return data;
}
