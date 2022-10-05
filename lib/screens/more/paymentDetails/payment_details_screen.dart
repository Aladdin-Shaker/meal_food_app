import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/widgets/appbar_widget.dart';
import 'package:meal_food_app/widgets/bottom_payment_sheet.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: StringsManager.paymentDetails),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppPadding.p20),
            child: Text(
              StringsManager.customizePayment,
              style: getBoldStyle(
                fontSize: AppSize.s16,
                color: ColorManager.primary,
              ),
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(right: AppPadding.p20, left: AppPadding.p20),
            child: Divider(),
          ),
          const SizedBox(height: AppSize.s14),
          Container(
            width: SizeManager.screenWidth,
            height: SizeManager.screenHeight / 4,
            margin: const EdgeInsets.only(bottom: AppMarging.m58),
            decoration:
                const BoxDecoration(color: ColorManager.grey, boxShadow: [
              BoxShadow(
                color: ColorManager.placehoder,
                blurRadius: 100,
                spreadRadius: 5,
                offset: Offset(2, 40),
                blurStyle: BlurStyle.normal,
              ),
            ]),
            padding: const EdgeInsets.all(AppPadding.p30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cash/Card on delivery',
                      style: getBoldStyle(
                        fontSize: AppSize.s12,
                        color: ColorManager.primary,
                      ),
                    ),
                    const Icon(
                      Icons.check,
                      color: ColorManager.main,
                    )
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/visa.png',
                    ),
                    const SizedBox(width: AppSize.s20),
                    const Text('**** **** ****'),
                    const Spacer(),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            width: 2, color: ColorManager.main),
                      ),
                      onPressed: () {
                        debugPrint('Received click');
                      },
                      child: Text(
                        'Delete card',
                        style: getBoldStyle(
                          color: ColorManager.main,
                          fontSize: FontSizes.s12,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                const SizedBox(height: AppSize.s14),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Other methods',
                      style: getBoldStyle(
                        fontSize: AppSize.s12,
                        color: ColorManager.primary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSize.s40),
          Container(
            padding: const EdgeInsets.all(AppPadding.p20),
            width: SizeManager.screenWidth / 2,
            child: ElevatedButton.icon(
              onPressed: () => bottomPaymentSheet(context),
              icon: const Icon(
                CupertinoIcons.add,
                size: AppSize.s30,
              ),
              label: Text(
                StringsManager.addAnotherCart,
                style: getSemiBoldStyle(
                  color: ColorManager.white,
                  fontSize: FontSizes.s16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
